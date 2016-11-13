control "cis-6-2-5" do
  impact 1.0
  title "6.2.5 Ensure root is the only UID 0 account (Scored)"
  desc "Any account with UID 0 has superuser privileges on the system. This access must be limited to only the default root account"

  describe passwd.uids(0) do
    its('users') { should cmp 'root' }
    its('entries.length') { should eq 1 }
  end
end
