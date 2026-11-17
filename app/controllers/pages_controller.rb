class PagesController < ApplicationController
  def home
    @stats = [
      { number: "62M",   label: "tonnes of e-waste generated worldwide in 2022" },
      { number: "22.3%", label: "of e-waste is documented as safely collected and recycled" },
      { number: "82M",   label: "tonnes projected by 2030" },
      { number: "5x",    label: "faster growth in e-waste than in e-waste recycling" }
    ]
  end

  def issue
    @timeline = [
      { year: "2010", amount: 33.8, note: "produced" },
      { year: "2025", amount: 65,   note: "produced" },
      { year: "2030", amount: 82,   note: "projected" }
    ]
    @max_amount = @timeline.map { |t| t[:amount] }.max
    @metals = [
      { name: "Lead",      harm: "Damages the nervous system and is especially dangerous to children's brain development." },
      { name: "Mercury",   harm: "A neurotoxin that builds up in the food chain, including in fish." },
      { name: "Cadmium",   harm: "Toxic to the kidneys and bones, and can cause cancer with long-term exposure." },
      { name: "Beryllium", harm: "Breathing in dust or fumes can cause serious lung disease." }
    ]
  end

  def solutions
    @individual_actions = [
      { title: "Keep Devices Longer",       body: "You do not need to upgrade phones or laptops every year or two. Your current device is often enough." },
      { title: "Repair",                    body: "Go to repair shops or community repair events to fix broken devices instead of replacing them." },
      { title: "Buy Refurbished",           body: "Refurbished devices are cheaper and prevent a brand-new device from being made." },
      { title: "Repurpose Old Technology",  body: "Be creative and turn old devices into things you need, such as an e-reader, photo frame, or camera." },
      { title: "Donate or Sell",            body: "If a device still works but you need a new one, sell it on secondhand markets, trade it in, or donate it." },
      { title: "Recycle Responsibly",       body: "Don't throw electronics or batteries into the garbage or recycling bins. Wipe your data and drop items at e-waste depots, often located in community centres." },
      { title: "Spread Awareness",          body: "Pressure businesses like Apple and Samsung to increase product lifespan and device repairability." }
    ]
    @business_actions = [
      { title: "Design for repair",        body: "Use standard screws, replaceable batteries and modular parts so devices can be fixed instead of thrown away." },
      { title: "Support devices longer",   body: "Provide software and security updates for many years, so working hardware does not become obsolete." },
      { title: "Fair repair pricing",      body: "Sell spare parts, tools and manuals at reasonable prices to everyone, including independent repair shops." },
      { title: "Take-back programs",       body: "Offer easy trade-in and recycling for old devices, with certified recyclers and secure data wiping." },
      { title: "Educate customers",        body: "Teach people how their purchases affect the environment, and incentivize more sustainable buying." }
    ]
  end

  def government
    @responsibilities = [
      { title: "Producer responsibility laws", body: "Make manufacturers pay for the collection and recycling of the products they sell, so they have a reason to design long-lasting products." },
      { title: "Right to repair",              body: "Require companies to provide parts, tools and repair information, and ban practices that block independent repair." },
      { title: "Fight planned obsolescence",   body: "Set minimum software-support periods and durability standards so devices are built to last." },
      { title: "Stop toxic exports",           body: "Enforce rules on shipping e-waste to developing countries, where unsafe recycling harms workers, many of them children." },
      { title: "Convenient collection",        body: "Fund and expand e-waste depots so recycling is easy, free and close to home." },
      { title: "Public education",             body: "Run campaigns that tell people where to take e-waste and why it must stay out of the garbage." }
    ]
    @ongoing = [
      { title: "Right to repair legislation", body: "Laws that give consumers and repair shops access to parts and manuals have been adopted in a growing number of places, including the European Union and several US states." },
      { title: "EU smartphone design rules",  body: "The European Union has introduced rules that push phone makers toward longer software support, replaceable batteries and better repairability." },
      { title: "Quebec's anti-obsolescence law", body: "Quebec has passed legislation aimed at planned obsolescence and at making repair easier for consumers." },
      { title: "Producer-funded recycling in Ontario", body: "Ontario requires producers of electronics to be responsible for collecting and recycling their products at end of life." },
      { title: "Community repair events",      body: "Repair cafés and community repair events let people fix devices together, for free or at low cost." }
    ]
  end

  def follow
  end
end
