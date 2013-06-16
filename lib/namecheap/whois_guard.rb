module Namecheap
  class Whois_Guard < Api
    # Allots WhoisGuard privacy protection.
    # @see http://developer.namecheap.com/docs/doku.php?id=api-reference:whoisguard:allot
    def allot(id, domain, options = {})
      options['WhoisguardId'] = id
      options['DomainName'] = domain
      api_call('whoisguard.allot', options)
    end

    # Discards the WhoisGuard.
    # @see http://developer.namecheap.com/docs/doku.php?id=api-reference:whoisguard:discard
    def discard(id, options = {})
      options['WhoisguardId'] = id
      api_call('whoisguard.discard', options)
    end

    # Unallots WhoisGuard privacy protection for the WhoisguardID.
    # @see http://developer.namecheap.com/docs/doku.php?id=api-reference:whoisguard:unallot
    def unallot(id, options = {})
      options['WhoisguardId'] = id
      api_call('whoisguard.unallot', options)
    end

    # Disables WhoisGuard privacy protection for the WhoisguardID.
    # @see http://developer.namecheap.com/docs/doku.php?id=api-reference:whoisguard:disable
    def disable(id, options = {})
      options['WhoisguardId'] = id
      api_call('whoisguard.disable', options)
    end

    # Enables WhoisGuard privacy protection for the WhoisguardID.
    # @see http://developer.namecheap.com/docs/doku.php?id=api-reference:whoisguard:enable
    def enable(id, options = {})
      options['WhoisguardId'] = id
      api_call('whoisguard.enable', options)
    end

    # Changes WhoisGuard email address.
    # @see http://developer.namecheap.com/docs/doku.php?id=api-reference:whoisguard:changeemailaddress
    def change_email_address(id, options = {})
      options['WhoisguardId'] = id
      api_call('whoisguard.changeemailaddress', options)
    end
  end
end
