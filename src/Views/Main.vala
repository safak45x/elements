public class PeriodicView : Gtk.Grid {

	HeaderBar headerBar = HeaderBar.get_instance();

	static PeriodicView? instance;

	public static PeriodicView get_instance() {
		if (instance == null) {
			instance = new PeriodicView(Elements.MAIN_VIEW_ID);
		}
		return instance;
	}

	public PeriodicView(string id) {
		headerBar.showPeriodicViewMode(true);

		this.row_spacing = 3;
		this.column_spacing = 3;
		this.row_homogeneous = true;
		this.column_homogeneous = true;

		for (int i = 0; i < 118; i++) {
			this.attach (new Gtk.Label(ATOMS.SYMBOL[i]), ATOMS.POSITION[i,0], ATOMS.POSITION[i,1]);
		}

		var x = new Gtk.Label("*");
		var xx = new Gtk.Label("**");

		this.attach(new Gtk.Label(" "), 0, 8);
		this.attach(x, 2, 6);
		this.attach(xx, 2, 7);
/*
		if(id == Elements.MAIN_VIEW_ID) {
			x.get_style_context().add_class(Elements.LANTHANIDE);
			xx.get_style_context().add_class(Elements.ACTINIDE);

			b001.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b006.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b007.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b008.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b015.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b016.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b034.get_style_context().add_class(Elements.OTHER_NONMETAL);
			b003.get_style_context().add_class(Elements.ALKALI_METAL);
			b011.get_style_context().add_class(Elements.ALKALI_METAL);
			b019.get_style_context().add_class(Elements.ALKALI_METAL);
			b037.get_style_context().add_class(Elements.ALKALI_METAL);
			b055.get_style_context().add_class(Elements.ALKALI_METAL);
			b087.get_style_context().add_class(Elements.ALKALI_METAL);
			b004.get_style_context().add_class(Elements.ALKALINE_EARTH_METAL);
			b012.get_style_context().add_class(Elements.ALKALINE_EARTH_METAL);
			b020.get_style_context().add_class(Elements.ALKALINE_EARTH_METAL);
			b038.get_style_context().add_class(Elements.ALKALINE_EARTH_METAL);
			b056.get_style_context().add_class(Elements.ALKALINE_EARTH_METAL);
			b088.get_style_context().add_class(Elements.ALKALINE_EARTH_METAL);
			b021.get_style_context().add_class(Elements.TRANSITION_METAL);
			b022.get_style_context().add_class(Elements.TRANSITION_METAL);
			b023.get_style_context().add_class(Elements.TRANSITION_METAL);
			b024.get_style_context().add_class(Elements.TRANSITION_METAL);
			b025.get_style_context().add_class(Elements.TRANSITION_METAL);
			b026.get_style_context().add_class(Elements.TRANSITION_METAL);
			b027.get_style_context().add_class(Elements.TRANSITION_METAL);
			b028.get_style_context().add_class(Elements.TRANSITION_METAL);
			b029.get_style_context().add_class(Elements.TRANSITION_METAL);
			b030.get_style_context().add_class(Elements.TRANSITION_METAL);
			b039.get_style_context().add_class(Elements.TRANSITION_METAL);
			b040.get_style_context().add_class(Elements.TRANSITION_METAL);
			b041.get_style_context().add_class(Elements.TRANSITION_METAL);
			b042.get_style_context().add_class(Elements.TRANSITION_METAL);
			b043.get_style_context().add_class(Elements.TRANSITION_METAL);
			b044.get_style_context().add_class(Elements.TRANSITION_METAL);
			b045.get_style_context().add_class(Elements.TRANSITION_METAL);
			b046.get_style_context().add_class(Elements.TRANSITION_METAL);
			b047.get_style_context().add_class(Elements.TRANSITION_METAL);
			b048.get_style_context().add_class(Elements.TRANSITION_METAL);
			b072.get_style_context().add_class(Elements.TRANSITION_METAL);
			b073.get_style_context().add_class(Elements.TRANSITION_METAL);
			b074.get_style_context().add_class(Elements.TRANSITION_METAL);
			b075.get_style_context().add_class(Elements.TRANSITION_METAL);
			b076.get_style_context().add_class(Elements.TRANSITION_METAL);
			b077.get_style_context().add_class(Elements.TRANSITION_METAL);
			b078.get_style_context().add_class(Elements.TRANSITION_METAL);
			b079.get_style_context().add_class(Elements.TRANSITION_METAL);
			b080.get_style_context().add_class(Elements.TRANSITION_METAL);
			b104.get_style_context().add_class(Elements.TRANSITION_METAL);
			b105.get_style_context().add_class(Elements.TRANSITION_METAL);
			b106.get_style_context().add_class(Elements.TRANSITION_METAL);
			b107.get_style_context().add_class(Elements.TRANSITION_METAL);
			b108.get_style_context().add_class(Elements.TRANSITION_METAL);
			b109.get_style_context().add_class(Elements.TRANSITION_METAL);
			b110.get_style_context().add_class(Elements.TRANSITION_METAL);
			b111.get_style_context().add_class(Elements.TRANSITION_METAL);
			b112.get_style_context().add_class(Elements.TRANSITION_METAL);
			b013.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b031.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b049.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b050.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b081.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b082.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b083.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b113.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b115.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b114.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b116.get_style_context().add_class(Elements.POST_TRANSITION_METAL);
			b005.get_style_context().add_class(Elements.METALLOID);
			b014.get_style_context().add_class(Elements.METALLOID);
			b032.get_style_context().add_class(Elements.METALLOID);
			b033.get_style_context().add_class(Elements.METALLOID);
			b051.get_style_context().add_class(Elements.METALLOID);
			b052.get_style_context().add_class(Elements.METALLOID);
			b084.get_style_context().add_class(Elements.METALLOID);
			b009.get_style_context().add_class(Elements.HALOGEN);
			b017.get_style_context().add_class(Elements.HALOGEN);
			b035.get_style_context().add_class(Elements.HALOGEN);
			b053.get_style_context().add_class(Elements.HALOGEN);
			b085.get_style_context().add_class(Elements.HALOGEN);
			b117.get_style_context().add_class(Elements.HALOGEN);
			b002.get_style_context().add_class(Elements.NOBLE_GAS);
			b010.get_style_context().add_class(Elements.NOBLE_GAS);
			b018.get_style_context().add_class(Elements.NOBLE_GAS);
			b036.get_style_context().add_class(Elements.NOBLE_GAS);
			b054.get_style_context().add_class(Elements.NOBLE_GAS);
			b086.get_style_context().add_class(Elements.NOBLE_GAS);
			b118.get_style_context().add_class(Elements.NOBLE_GAS);
			b057.get_style_context().add_class(Elements.LANTHANIDE);
			b058.get_style_context().add_class(Elements.LANTHANIDE);
			b059.get_style_context().add_class(Elements.LANTHANIDE);
			b060.get_style_context().add_class(Elements.LANTHANIDE);
			b061.get_style_context().add_class(Elements.LANTHANIDE);
			b062.get_style_context().add_class(Elements.LANTHANIDE);
			b063.get_style_context().add_class(Elements.LANTHANIDE);
			b064.get_style_context().add_class(Elements.LANTHANIDE);
			b065.get_style_context().add_class(Elements.LANTHANIDE);
			b066.get_style_context().add_class(Elements.LANTHANIDE);
			b067.get_style_context().add_class(Elements.LANTHANIDE);
			b068.get_style_context().add_class(Elements.LANTHANIDE);
			b069.get_style_context().add_class(Elements.LANTHANIDE);
			b070.get_style_context().add_class(Elements.LANTHANIDE);
			b071.get_style_context().add_class(Elements.LANTHANIDE);
			b089.get_style_context().add_class(Elements.ACTINIDE);
			b090.get_style_context().add_class(Elements.ACTINIDE);
			b091.get_style_context().add_class(Elements.ACTINIDE);
			b092.get_style_context().add_class(Elements.ACTINIDE);
			b093.get_style_context().add_class(Elements.ACTINIDE);
			b094.get_style_context().add_class(Elements.ACTINIDE);
			b095.get_style_context().add_class(Elements.ACTINIDE);
			b096.get_style_context().add_class(Elements.ACTINIDE);
			b097.get_style_context().add_class(Elements.ACTINIDE);
			b098.get_style_context().add_class(Elements.ACTINIDE);
			b099.get_style_context().add_class(Elements.ACTINIDE);
			b100.get_style_context().add_class(Elements.ACTINIDE);
			b101.get_style_context().add_class(Elements.ACTINIDE);
			b102.get_style_context().add_class(Elements.ACTINIDE);
			b103.get_style_context().add_class(Elements.ACTINIDE);
		} if(id == Elements.ELECTRO_VIEW_ID) {
			x.get_style_context().add_class(Elements.ZEROeV);
			xx.get_style_context().add_class(Elements.ZEROeV);

			b002.get_style_context().add_class(Elements.ZEROeV);
			b010.get_style_context().add_class(Elements.ZEROeV);
			b018.get_style_context().add_class(Elements.ZEROeV);
			b036.get_style_context().add_class(Elements.FOUReV);
			b054.get_style_context().add_class(Elements.THREEeV);
			b057.get_style_context().add_class(Elements.ONEeV);
			b058.get_style_context().add_class(Elements.ONEeV);
			b059.get_style_context().add_class(Elements.ONEeV);
			b060.get_style_context().add_class(Elements.ONEeV);
			b061.get_style_context().add_class(Elements.ONEeV);
			b062.get_style_context().add_class(Elements.ONEeV);
			b063.get_style_context().add_class(Elements.ONEeV);
			b064.get_style_context().add_class(Elements.ONEeV);
			b065.get_style_context().add_class(Elements.ONEeV);
			b066.get_style_context().add_class(Elements.ONEeV);
			b067.get_style_context().add_class(Elements.ONEeV);
			b068.get_style_context().add_class(Elements.ONEeV);
			b069.get_style_context().add_class(Elements.ONEeV);
			b070.get_style_context().add_class(Elements.ONEeV);
			b071.get_style_context().add_class(Elements.ONEeV);
			b086.get_style_context().add_class(Elements.THREEeV);
			b089.get_style_context().add_class(Elements.ONEeV);
			b090.get_style_context().add_class(Elements.ONEeV);
			b091.get_style_context().add_class(Elements.ONEeV);
			b092.get_style_context().add_class(Elements.TWOeV);
			b093.get_style_context().add_class(Elements.TWOeV);
			b094.get_style_context().add_class(Elements.TWOeV);
			b095.get_style_context().add_class(Elements.ONEeV);
			b096.get_style_context().add_class(Elements.ONEeV);
			b097.get_style_context().add_class(Elements.ONEeV);
			b098.get_style_context().add_class(Elements.ONEeV);
			b099.get_style_context().add_class(Elements.ONEeV);
			b100.get_style_context().add_class(Elements.ONEeV);
			b101.get_style_context().add_class(Elements.ONEeV);
			b102.get_style_context().add_class(Elements.ONEeV);
			b103.get_style_context().add_class(Elements.ONEeV);
			b104.get_style_context().add_class(Elements.ZEROeV);
			b105.get_style_context().add_class(Elements.ZEROeV);
			b106.get_style_context().add_class(Elements.ZEROeV);
			b107.get_style_context().add_class(Elements.ZEROeV);
			b108.get_style_context().add_class(Elements.ZEROeV);
			b109.get_style_context().add_class(Elements.ZEROeV);
			b110.get_style_context().add_class(Elements.ZEROeV);
			b111.get_style_context().add_class(Elements.ZEROeV);
			b112.get_style_context().add_class(Elements.ZEROeV);
			b113.get_style_context().add_class(Elements.ZEROeV);
			b114.get_style_context().add_class(Elements.ZEROeV);
			b115.get_style_context().add_class(Elements.ZEROeV);
			b116.get_style_context().add_class(Elements.ZEROeV);
			b117.get_style_context().add_class(Elements.ZEROeV);
			b118.get_style_context().add_class(Elements.ZEROeV);
			b003.get_style_context().add_class(Elements.ONEeV);
			b011.get_style_context().add_class(Elements.ONEeV);
			b012.get_style_context().add_class(Elements.ONEeV);
			b019.get_style_context().add_class(Elements.ONEeV);
			b020.get_style_context().add_class(Elements.ONEeV);
			b037.get_style_context().add_class(Elements.ONEeV);
			b038.get_style_context().add_class(Elements.ONEeV);
			b039.get_style_context().add_class(Elements.ONEeV);
			b055.get_style_context().add_class(Elements.ONEeV);
			b056.get_style_context().add_class(Elements.ONEeV);
			b087.get_style_context().add_class(Elements.ONEeV);
			b088.get_style_context().add_class(Elements.ONEeV);
			b004.get_style_context().add_class(Elements.TWOeV);
			b013.get_style_context().add_class(Elements.TWOeV);
			b014.get_style_context().add_class(Elements.TWOeV);
			b021.get_style_context().add_class(Elements.TWOeV);
			b022.get_style_context().add_class(Elements.TWOeV);
			b023.get_style_context().add_class(Elements.TWOeV);
			b024.get_style_context().add_class(Elements.TWOeV);
			b025.get_style_context().add_class(Elements.TWOeV);
			b026.get_style_context().add_class(Elements.TWOeV);
			b028.get_style_context().add_class(Elements.TWOeV);
			b030.get_style_context().add_class(Elements.TWOeV);
			b031.get_style_context().add_class(Elements.TWOeV);
			b032.get_style_context().add_class(Elements.TWOeV);
			b040.get_style_context().add_class(Elements.TWOeV);
			b041.get_style_context().add_class(Elements.TWOeV);
			b042.get_style_context().add_class(Elements.TWOeV);
			b048.get_style_context().add_class(Elements.TWOeV);
			b049.get_style_context().add_class(Elements.TWOeV);
			b050.get_style_context().add_class(Elements.TWOeV);
			b072.get_style_context().add_class(Elements.TWOeV);
			b073.get_style_context().add_class(Elements.TWOeV);
			b074.get_style_context().add_class(Elements.TWOeV);
			b081.get_style_context().add_class(Elements.TWOeV);
			b001.get_style_context().add_class(Elements.THREEeV);
			b005.get_style_context().add_class(Elements.THREEeV);
			b015.get_style_context().add_class(Elements.THREEeV);
			b027.get_style_context().add_class(Elements.THREEeV);
			b029.get_style_context().add_class(Elements.THREEeV);
			b033.get_style_context().add_class(Elements.THREEeV);
			b043.get_style_context().add_class(Elements.THREEeV);
			b044.get_style_context().add_class(Elements.THREEeV);
			b045.get_style_context().add_class(Elements.THREEeV);
			b046.get_style_context().add_class(Elements.THREEeV);
			b047.get_style_context().add_class(Elements.THREEeV);
			b051.get_style_context().add_class(Elements.THREEeV);
			b052.get_style_context().add_class(Elements.THREEeV);
			b075.get_style_context().add_class(Elements.THREEeV);
			b076.get_style_context().add_class(Elements.THREEeV);
			b077.get_style_context().add_class(Elements.THREEeV);
			b078.get_style_context().add_class(Elements.THREEeV);
			b080.get_style_context().add_class(Elements.THREEeV);
			b082.get_style_context().add_class(Elements.THREEeV);
			b083.get_style_context().add_class(Elements.THREEeV);
			b084.get_style_context().add_class(Elements.THREEeV);
			b085.get_style_context().add_class(Elements.THREEeV);
			b006.get_style_context().add_class(Elements.FOUReV);
			b016.get_style_context().add_class(Elements.FOUReV);
			b034.get_style_context().add_class(Elements.FOUReV);
			b035.get_style_context().add_class(Elements.FOUReV);
			b053.get_style_context().add_class(Elements.FOUReV);
			b079.get_style_context().add_class(Elements.FOUReV);
			b007.get_style_context().add_class(Elements.FIVEeV);
			b008.get_style_context().add_class(Elements.FIVEeV);
			b017.get_style_context().add_class(Elements.FIVEeV);
			b009.get_style_context().add_class(Elements.SIXeV);
		}
*/
	}
}