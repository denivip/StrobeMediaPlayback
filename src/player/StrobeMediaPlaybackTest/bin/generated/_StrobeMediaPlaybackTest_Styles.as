
package 
{

import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSCondition;
import mx.styles.CSSSelector;
import mx.styles.CSSStyleDeclaration;
import mx.styles.IStyleManager2;
import mx.utils.ObjectUtil;
import mx.skins.spark.ScrollBarThumbSkin;
import spark.skins.spark.FocusSkin;
import mx.skins.spark.ScrollBarDownButtonSkin;
import mx.core.UITextField;
import mx.skins.spark.DefaultButtonSkin;
import mx.skins.spark.PanelBorderSkin;
import mx.skins.halo.ToolTipBorder;
import mx.skins.spark.ScrollBarTrackSkin;
import spark.skins.spark.DefaultButtonSkin;
import spark.skins.spark.ButtonSkin;
import spark.skins.spark.SkinnableContainerSkin;
import spark.skins.spark.ErrorSkin;
import mx.skins.halo.DefaultDragImage;
import spark.skins.spark.windowChrome.TitleBarSkin;
import mx.skins.spark.ScrollBarUpButtonSkin;
import spark.skins.spark.ApplicationSkin;
import spark.skins.spark.WindowedApplicationSkin;
import mx.skins.halo.HaloFocusRect;
import mx.core.UIComponent;
import mx.skins.spark.ButtonSkin;
import mx.skins.spark.ContainerBorderSkin;
import mx.skins.halo.BusyCursor;
[ExcludeClass]

public class _StrobeMediaPlaybackTest_Styles
{
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_close_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_close_over.png', original='win_close_over.png', _line='167', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_close_over_png__317661441_1869315975:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragLink', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='207', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_879317984_mx_skins_cursor_DragLink_1284081222:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$gripper_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$gripper_up.png', original='gripper_up.png', _line='75', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_gripper_up_png__1271718576_1092949592:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_close_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_close_up.png', original='win_close_up.png', _line='168', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_close_up_png__716181178_238151614:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_up.png', original='mac_max_up.png', _line='114', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_up_png_1488037703_883161151:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_restore_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_restore_down.png', original='win_restore_down.png', _line='277', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_restore_down_png_394626487_140172849:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_over.png', original='win_max_over.png', _line='248', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_over_png_1911734099_1657264677:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_close_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_close_down.png', original='win_close_down.png', _line='166', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_close_down_png_580333517_1720018251:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.BusyCursor', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='194', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_879317984_mx_skins_cursor_BusyCursor_965639783:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_over.png', original='win_min_over.png', _line='262', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_over_png__1908807131_1383326147:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_close_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_close_up.png', original='mac_close_up.png', _line='100', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_close_up_png__2110109005_1852998213:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_restore_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_restore_up.png', original='win_restore_up.png', _line='275', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_restore_up_png_785299888_1258166216:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_close_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_close_over.png', original='mac_close_over.png', _line='99', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_close_over_png_147493164_1156783980:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_down.png', original='win_min_down.png', _line='263', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_down_png__1010812173_341070341:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragReject', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='209', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_879317984_mx_skins_cursor_DragReject_203433317:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragMove', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='208', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_879317984_mx_skins_cursor_DragMove_1284106797:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_over.png', original='mac_min_over.png', _line='128', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_over_png_992232338_1220505882:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_dis.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_dis.png', original='mac_max_dis.png', _line='111', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_dis_png_838190072_1665929284:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_close_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_close_down.png', original='mac_close_down.png', _line='98', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_close_down_png_1045488122_441717614:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_up.png', original='win_min_up.png', _line='261', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_up_png__2022863380_1900004692:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_dis.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_dis.png', original='mac_min_dis.png', _line='126', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_dis_png_160757478_473173266:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_up.png', original='mac_min_up.png', _line='129', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_up_png__334930279_1725246287:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_restore_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_restore_over.png', original='win_restore_over.png', _line='276', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_restore_over_png__503368471_881365729:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_min_down.png', original='mac_min_down.png', _line='127', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_down_png_1890227296_1696593784:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragCopy', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='205', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_879317984_mx_skins_cursor_DragCopy_1283819217:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_dis.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_dis.png', original='win_max_dis.png', _line='250', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_dis_png_51871493_380531889:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_down.png', original='mac_max_down.png', _line='112', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_down_png_1415801230_1895457034:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_up.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_up.png', original='win_max_up.png', _line='247', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_up_png__199895398_2124976974:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_down.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_max_down.png', original='win_max_down.png', _line='249', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_down_png__1485238239_63741001:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_dis.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$win_min_dis.png', original='win_min_dis.png', _line='264', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_dis_png__625561101_821213617:Class;
    [Embed(_resolvedSource='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_over.png', source='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$mac_max_over.png', original='mac_max_over.png', _line='113', _pathsep='true', _file='D:/p4/Strobe.SWF/buildtools/sdks/4.5.1/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_over_png_517806272_1558217704:Class;
    public static function init(fbs:IFlexModuleFactory):void
    {
        var styleManager:IStyleManager2 = fbs.getImplementation("mx.styles::IStyleManager2") as IStyleManager2;
        

        var conditions:Array = null;
        var condition:CSSCondition = null;
        var selector:CSSSelector = null;
        var style:CSSStyleDeclaration;
        var effects:Array;
        
        var mergedStyle:CSSStyleDeclaration;

        
        //
        // .gripperSkin
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "gripperSkin");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".gripperSkin");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_gripper_up_png__1271718576_1092949592;
                this.overSkin = _embed_css_gripper_up_png__1271718576_1092949592;
                this.downSkin = _embed_css_gripper_up_png__1271718576_1092949592;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .macCloseButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "macCloseButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".macCloseButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_close_up_png__2110109005_1852998213;
                this.overSkin = _embed_css_mac_close_over_png_147493164_1156783980;
                this.downSkin = _embed_css_mac_close_down_png_1045488122_441717614;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .macMaxButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "macMaxButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".macMaxButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_max_up_png_1488037703_883161151;
                this.overSkin = _embed_css_mac_max_over_png_517806272_1558217704;
                this.downSkin = _embed_css_mac_max_down_png_1415801230_1895457034;
                this.disabledSkin = _embed_css_mac_max_dis_png_838190072_1665929284;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .macMinButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "macMinButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".macMinButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_min_up_png__334930279_1725246287;
                this.overSkin = _embed_css_mac_min_over_png_992232338_1220505882;
                this.downSkin = _embed_css_mac_min_down_png_1890227296_1696593784;
                this.alpha = 0.5;
                this.disabledSkin = _embed_css_mac_min_dis_png_160757478_473173266;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .statusTextStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "statusTextStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".statusTextStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x585858;
                this.alpha = 0.6;
                this.fontSize = 10;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .titleTextStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "titleTextStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".titleTextStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x585858;
                this.alpha = 0.6;
                this.fontSize = 9;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winCloseButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winCloseButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winCloseButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_close_up_png__716181178_238151614;
                this.overSkin = _embed_css_win_close_over_png__317661441_1869315975;
                this.downSkin = _embed_css_win_close_down_png_580333517_1720018251;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winMaxButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winMaxButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winMaxButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_max_up_png__199895398_2124976974;
                this.downSkin = _embed_css_win_max_down_png__1485238239_63741001;
                this.overSkin = _embed_css_win_max_over_png_1911734099_1657264677;
                this.disabledSkin = _embed_css_win_max_dis_png_51871493_380531889;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winMinButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winMinButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winMinButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_min_up_png__2022863380_1900004692;
                this.downSkin = _embed_css_win_min_down_png__1010812173_341070341;
                this.overSkin = _embed_css_win_min_over_png__1908807131_1383326147;
                this.disabledSkin = _embed_css_win_min_dis_png__625561101_821213617;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winRestoreButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winRestoreButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winRestoreButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_restore_up_png_785299888_1258166216;
                this.downSkin = _embed_css_win_restore_down_png_394626487_140172849;
                this.overSkin = _embed_css_win_restore_over_png__503368471_881365729;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .dateFieldPopup
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "dateFieldPopup");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".dateFieldPopup");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.dropShadowVisible = true;
                this.borderThickness = 1;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .errorTip
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "errorTip");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".errorTip");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
                this.borderStyle = "errorTipRight";
                this.paddingTop = 4;
                this.borderColor = 0xce2929;
                this.color = 0xffffff;
                this.fontSize = 10;
                this.shadowColor = 0x000000;
                this.paddingLeft = 4;
                this.paddingBottom = 4;
                this.paddingRight = 4;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .headerDragProxyStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "headerDragProxyStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".headerDragProxyStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .swatchPanelTextField
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "swatchPanelTextField");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".swatchPanelTextField");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "inset";
                this.borderColor = 0xd5dddd;
                this.highlightColor = 0xc4cccc;
                this.backgroundColor = 0xffffff;
                this.shadowCapColor = 0xd5dddd;
                this.shadowColor = 0xd5dddd;
                this.paddingLeft = 5;
                this.buttonColor = 0x6f7777;
                this.borderCapColor = 0x919999;
                this.paddingRight = 5;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .todayStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "todayStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".todayStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0;
                this.textAlign = "center";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .weekDayStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "weekDayStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".weekDayStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
                this.textAlign = "center";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .windowStatus
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "windowStatus");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".windowStatus");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x666666;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .windowStyles
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "windowStyles");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".windowStyles");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // global
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("global", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("global");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.lineHeight = "120%";
                this.unfocusedTextSelectionColor = 0xe8e8e8;
                this.kerning = "default";
                this.caretColor = 0x0167ff;
                this.iconColor = 0x111111;
                this.verticalScrollPolicy = "auto";
                this.horizontalAlign = "left";
                this.filled = true;
                this.showErrorTip = true;
                this.textDecoration = "none";
                this.columnCount = "auto";
                this.liveDragging = true;
                this.dominantBaseline = "auto";
                this.fontThickness = 0;
                this.focusBlendMode = "normal";
                this.blockProgression = "tb";
                this.buttonColor = 0x6f7777;
                this.indentation = 17;
                this.autoThumbVisibility = true;
                this.textAlignLast = "start";
                this.paddingTop = 0;
                this.textAlpha = 1.0;
                this.chromeColor = 0xcccccc;
                this.rollOverColor = 0xcedbef;
                this.bevel = true;
                this.fontSize = 12;
                this.shadowColor = 0xeeeeee;
                this.columnGap = 20;
                this.paddingLeft = 0;
                this.paragraphEndIndent = 0;
                this.fontWeight = "normal";
                this.indicatorGap = 14;
                this.focusSkin = mx.skins.halo.HaloFocusRect;
                this.breakOpportunity = "auto";
                this.leading = 2;
                this.symbolColor = 0x000000;
                this.renderingMode = "cff";
                this.iconPlacement = "left";
                this.borderThickness = 1;
                this.paragraphStartIndent = 0;
                this.layoutDirection = "ltr";
                this.contentBackgroundColor = 0xffffff;
                this.backgroundSize = "auto";
                this.paragraphSpaceAfter = 0;
                this.borderColor = 0x696969;
                this.shadowDistance = 2;
                this.stroked = false;
                this.digitWidth = "default";
                this.verticalAlign = "top";
                this.ligatureLevel = "common";
                this.firstBaselineOffset = "auto";
                this.fillAlphas = [0.6, 0.4, 0.75, 0.65];
                this.version = "4.0.0";
                this.shadowDirection = "center";
                this.fontLookup = "embeddedCFF";
                this.lineBreak = "toFit";
                this.repeatInterval = 35;
                this.openDuration = 1;
                this.paragraphSpaceBefore = 0;
                this.fontFamily = "Arial";
                this.paddingBottom = 0;
                this.strokeWidth = 1;
                this.lineThrough = false;
                this.textFieldClass = mx.core.UITextField;
                this.alignmentBaseline = "useDominantBaseline";
                this.trackingLeft = 0;
                this.verticalGridLines = true;
                this.fontStyle = "normal";
                this.dropShadowColor = 0x000000;
                this.accentColor = 0x0099ff;
                this.backgroundImageFillMode = "scale";
                this.selectionColor = 0xa8c6ee;
                this.borderWeight = 1;
                this.focusRoundedCorners = "tl tr bl br";
                this.paddingRight = 0;
                this.borderSides = "left top right bottom";
                this.disabledIconColor = 0x999999;
                this.textJustify = "interWord";
                this.focusColor = 0x70b2ee;
                this.borderVisible = true;
                this.selectionDuration = 250;
                this.typographicCase = "default";
                this.highlightAlphas = [0.3, 0];
                this.fillColor = 0xffffff;
                this.showErrorSkin = true;
                this.textRollOverColor = 0;
                this.rollOverOpenDelay = 200;
                this.digitCase = "default";
                this.shadowCapColor = 0xd5dddd;
                this.inactiveTextSelectionColor = 0xe8e8e8;
                this.backgroundAlpha = 1.0;
                this.justificationRule = "auto";
                this.roundedBottomCorners = true;
                this.dropShadowVisible = false;
                this.trackingRight = 0;
                this.fillColors = [0xffffff, 0xcccccc, 0xffffff, 0xeeeeee];
                this.horizontalGap = 8;
                this.borderCapColor = 0x919999;
                this.leadingModel = "auto";
                this.selectionDisabledColor = 0xdddddd;
                this.closeDuration = 50;
                this.embedFonts = false;
                this.letterSpacing = 0;
                this.focusAlpha = 0.55;
                this.borderAlpha = 1.0;
                this.baselineShift = 0;
                this.focusedTextSelectionColor = 0xa8c6ee;
                this.fontSharpness = 0;
                this.modalTransparencyDuration = 100;
                this.justificationStyle = "auto";
                this.borderStyle = "inset";
                this.contentBackgroundAlpha = 1;
                this.textRotation = "auto";
                this.fontAntiAliasType = "advanced";
                this.errorColor = 0xfe0000;
                this.direction = "ltr";
                this.cffHinting = "horizontalStem";
                this.horizontalGridLineColor = 0xf7f7f7;
                this.locale = "en";
                this.cornerRadius = 2;
                this.modalTransparencyColor = 0xdddddd;
                this.disabledAlpha = 0.5;
                this.textIndent = 0;
                this.verticalGridLineColor = 0xd5dddd;
                this.themeColor = 0x70b2ee;
                this.tabStops = null;
                this.modalTransparency = 0.5;
                this.smoothScrolling = true;
                this.columnWidth = "auto";
                this.textAlign = "start";
                this.horizontalScrollPolicy = "auto";
                this.textSelectedColor = 0;
                this.interactionMode = "mouse";
                this.whiteSpaceCollapse = "collapse";
                this.fontGridFitType = "pixel";
                this.horizontalGridLines = false;
                this.fullScreenHideControlsDelay = 3000;
                this.useRollOver = true;
                this.repeatDelay = 500;
                this.focusThickness = 2;
                this.verticalGap = 6;
                this.disabledColor = 0xaab3b3;
                this.modalTransparencyBlur = 3;
                this.slideDuration = 300;
                this.color = 0x000000;
                this.fixedThumbSize = false;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Application
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Application", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Application");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.ApplicationSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Button
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.ButtonSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // spark.components.Button.emphasized
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "emphasized");
        conditions.push(condition); 
        selector = new CSSSelector("spark.components.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button.emphasized");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.DefaultButtonSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.supportClasses.SkinnableComponent
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.supportClasses.SkinnableComponent", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableComponent");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.focusSkin = spark.skins.spark.FocusSkin;
                this.errorSkin = spark.skins.spark.ErrorSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.SkinnableContainer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.SkinnableContainer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableContainer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.SkinnableContainerSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.supportClasses.TextBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.supportClasses.TextBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.TextBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.layoutDirection = "ltr";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Alert
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Alert", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Alert");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingTop = 2;
                this.paddingLeft = 10;
                this.paddingBottom = 10;
                this.paddingRight = 10;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.Application
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.Application", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Application");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingTop = 24;
                this.backgroundColor = 0xffffff;
                this.horizontalAlign = "center";
                this.paddingLeft = 24;
                this.paddingBottom = 24;
                this.paddingRight = 24;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Button
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Button");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.textAlign = "center";
                this.labelVerticalOffset = 1;
                this.emphasizedSkin = mx.skins.spark.DefaultButtonSkin;
                this.verticalGap = 2;
                this.horizontalGap = 2;
                this.skin = mx.skins.spark.ButtonSkin;
                this.paddingLeft = 6;
                this.paddingRight = 6;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.Container
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.Container", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Container");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "none";
                this.borderSkin = mx.skins.spark.ContainerBorderSkin;
                this.cornerRadius = 0;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.ControlBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.ControlBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ControlBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.disabledOverlayAlpha = 0;
                this.borderStyle = "none";
                this.paddingTop = 11;
                this.verticalAlign = "middle";
                this.paddingLeft = 11;
                this.paddingBottom = 11;
                this.paddingRight = 11;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.managers.DragManager
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.managers.DragManager", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.DragManager");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.copyCursor = _embed_css_Assets_swf_879317984_mx_skins_cursor_DragCopy_1283819217;
                this.moveCursor = _embed_css_Assets_swf_879317984_mx_skins_cursor_DragMove_1284106797;
                this.rejectCursor = _embed_css_Assets_swf_879317984_mx_skins_cursor_DragReject_203433317;
                this.linkCursor = _embed_css_Assets_swf_879317984_mx_skins_cursor_DragLink_1284081222;
                this.defaultDragImageSkin = mx.skins.halo.DefaultDragImage;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.Panel
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.Panel", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Panel");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.statusStyleName = "windowStatus";
                this.borderStyle = "default";
                this.borderColor = 0;
                this.paddingTop = 0;
                this.backgroundColor = 0xffffff;
                this.cornerRadius = 0;
                this.titleBackgroundSkin = mx.core.UIComponent;
                this.borderAlpha = 0.5;
                this.paddingLeft = 0;
                this.paddingRight = 0;
                this.resizeEndEffect = "Dissolve";
                this.titleStyleName = "windowStyles";
                this.resizeStartEffect = "Dissolve";
                this.dropShadowVisible = true;
                this.borderSkin = mx.skins.spark.PanelBorderSkin;
                this.paddingBottom = 0;
            };
        }

        effects = style.mx_internal::effects;
        if (!effects)
        {
            effects = style.mx_internal::effects = [];
        }


          effects.push("resizeEndEffect");
          effects.push("resizeStartEffect");

        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.scrollClasses.ScrollBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.scrollClasses.ScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.scrollClasses.ScrollBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.thumbOffset = 0;
                this.paddingTop = 0;
                this.trackSkin = mx.skins.spark.ScrollBarTrackSkin;
                this.downArrowSkin = mx.skins.spark.ScrollBarDownButtonSkin;
                this.upArrowSkin = mx.skins.spark.ScrollBarUpButtonSkin;
                this.paddingLeft = 0;
                this.paddingBottom = 0;
                this.thumbSkin = mx.skins.spark.ScrollBarThumbSkin;
                this.paddingRight = 0;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.HScrollBar.textAreaVScrollBarStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "textAreaVScrollBarStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.HScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HScrollBar.textAreaVScrollBarStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.VScrollBar.textAreaHScrollBarStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "textAreaHScrollBarStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.VScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.VScrollBar.textAreaHScrollBarStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.managers.CursorManager
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.managers.CursorManager", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.CursorManager");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.busyCursor = mx.skins.halo.BusyCursor;
                this.busyCursorBackground = _embed_css_Assets_swf_879317984_mx_skins_cursor_BusyCursor_965639783;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.ToolTip
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.ToolTip", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ToolTip");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "toolTip";
                this.paddingTop = 2;
                this.borderColor = 0x919999;
                this.backgroundColor = 0xffffcc;
                this.borderSkin = mx.skins.halo.ToolTipBorder;
                this.cornerRadius = 2;
                this.fontSize = 10;
                this.paddingLeft = 4;
                this.paddingBottom = 2;
                this.backgroundAlpha = 0.95;
                this.paddingRight = 4;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.windowClasses.TitleBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.windowClasses.TitleBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.windowClasses.TitleBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.windowChrome.TitleBarSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.WindowedApplication
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.WindowedApplication", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.WindowedApplication");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.WindowedApplicationSkin;
                this.resizeAffordanceWidth = 6;
                this.backgroundAlpha = 1;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Window
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Window", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Window");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.WindowedApplicationSkin;
                this.resizeAffordanceWidth = 6;
                this.backgroundAlpha = 1;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }


    }
}

}
