class Exporter::Administrator < Exporter::Base
  def fill_data
    data.each do |line|
      sheet.add_row(format_user(line))
    end
  end

  def format_user(administrator)
    [
      administrator.first_name,
      administrator.last_name,
      administrator.email,
      administrator.employer&.code,
      administrator.deleted_at ? "Actif" : "Inactif",
      Administrator.human_attribute_name("role.#{administrator.role}"),
      localize(administrator.created_at),
      localize(administrator.last_sign_in_at),
      administrator.inviter&.full_name,
      administrator.owned_job_offers.map { |o| o.identifier }.join(", ")
    ]
  end
end
