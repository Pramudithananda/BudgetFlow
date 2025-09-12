.class public final Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
.super Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n1#1,482:1\n456#1,2:483\n456#1,2:485\n456#1,2:487\n456#1,2:489\n456#1,2:491\n456#1,2:493\n456#1,2:495\n456#1,2:497\n456#1,2:499\n456#1,2:501\n456#1,2:503\n456#1,2:505\n456#1,2:507\n456#1,2:509\n456#1,2:511\n456#1,2:513\n456#1,2:515\n456#1,2:517\n456#1,2:519\n456#1,2:521\n456#1,2:523\n456#1,2:525\n456#1,2:527\n456#1,2:529\n456#1,2:531\n456#1,2:533\n456#1,2:535\n456#1,2:537\n456#1,2:539\n456#1,2:541\n*S KotlinDebug\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n283#1:483,2\n292#1:485,2\n299#1:487,2\n305#1:489,2\n314#1:491,2\n321#1:493,2\n325#1:495,2\n330#1:497,2\n334#1:499,2\n340#1:501,2\n346#1:503,2\n350#1:505,2\n354#1:507,2\n360#1:509,2\n364#1:511,2\n367#1:513,2\n372#1:515,2\n377#1:517,2\n382#1:519,2\n386#1:521,2\n391#1:523,2\n396#1:525,2\n398#1:527,2\n407#1:529,2\n414#1:531,2\n416#1:533,2\n427#1:535,2\n436#1:537,2\n445#1:539,2\n449#1:541,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008E\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0010\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010l\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\rJ\u000e\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\rJ\u0010\u0010n\u001a\u00020\u00002\u0008\u0010o\u001a\u0004\u0018\u00010\u0016J\u0008\u0010p\u001a\u00020\u0004H\u0016J\u0010\u0010q\u001a\u00020\u00002\u0008\u0010q\u001a\u0004\u0018\u00010\u0007J\u0010\u0010r\u001a\u00020\u00002\u0008\u0010s\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\rJ\u0010\u0010u\u001a\u00020\u00002\u0008\u0008\u0001\u0010u\u001a\u00020%J\u0010\u0010v\u001a\u00020\u00002\u0008\u0010v\u001a\u0004\u0018\u00010\u0016J\u0010\u0010w\u001a\u00020\u00002\u0008\u0010w\u001a\u0004\u0018\u00010/J\u0010\u0010x\u001a\u00020\u00002\u0008\u0008\u0001\u0010x\u001a\u00020%J\u0010\u0010y\u001a\u00020\u00002\u0008\u0010y\u001a\u0004\u0018\u00010:J\u000e\u0010z\u001a\u00020\u00002\u0006\u0010{\u001a\u00020\rJ\u000e\u0010|\u001a\u00020\u00002\u0006\u0010}\u001a\u00020%J%\u0010~\u001a\u00020\u00002\u001a\u0010\u007f\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0012\u0005\u0012\u00030\u0081\u00010\u0080\u0001\u00a2\u0006\u0003\u0008\u0082\u0001H\u0082\u0008J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u0085\u0001\u001a\u00020%J\u0010\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\rJ\u0012\u0010\u0088\u0001\u001a\u00020\u00002\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0016J\u001d\u0010\u0088\u0001\u001a\u00020\u00002\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00162\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010:J\u0010\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\rJ\u0012\u0010\u008b\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u008b\u0001\u001a\u00020%J\u0012\u0010\u008c\u0001\u001a\u00020\u00002\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010/J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u008d\u0001\u001a\u00020%J\u001d\u0010\u008d\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u008d\u0001\u001a\u00020%2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010:J\u0012\u0010\u0089\u0001\u001a\u00020\u00002\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010:J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0016J\u001d\u0010\u008e\u0001\u001a\u00020\u00002\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00162\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010:J\u0012\u0010\u0090\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u0090\u0001\u001a\u00020%J\u001d\u0010\u0090\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u0090\u0001\u001a\u00020%2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010:J\u0012\u0010\u008f\u0001\u001a\u00020\u00002\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010:J\u0010\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R\"\u0010$\u001a\u0004\u0018\u00010%8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001c\u0010+\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0018\"\u0004\u0008-\u0010\u001aR\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001e\u00104\u001a\u00020%8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u000f\"\u0004\u0008A\u0010\u0011R\u001a\u0010B\u001a\u00020%X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00106\"\u0004\u0008D\u00108R\u001c\u0010E\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0018\"\u0004\u0008G\u0010\u001aR\u001e\u0010H\u001a\u00020%8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u00106\"\u0004\u0008J\u00108R\u001a\u0010K\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\u000f\"\u0004\u0008M\u0010\u0011R\u001a\u0010N\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u000f\"\u0004\u0008P\u0010\u0011R\"\u0010Q\u001a\u0004\u0018\u00010%8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0010\n\u0002\u0010*\u001a\u0004\u0008R\u0010\'\"\u0004\u0008S\u0010)R\u001c\u0010T\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010\u0018\"\u0004\u0008V\u0010\u001aR\u001c\u0010W\u001a\u0004\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u00101\"\u0004\u0008Y\u00103R\u001e\u0010Z\u001a\u00020%8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u00106\"\u0004\u0008\\\u00108R\u001c\u0010]\u001a\u0004\u0018\u00010:X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010<\"\u0004\u0008_\u0010>R\u001c\u0010`\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010\u0018\"\u0004\u0008b\u0010\u001aR\u001e\u0010c\u001a\u00020%8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u00106\"\u0004\u0008e\u00108R\u001c\u0010f\u001a\u0004\u0018\u00010:X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010<\"\u0004\u0008h\u0010>R\u001a\u0010i\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010\u000f\"\u0004\u0008k\u0010\u0011\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "()V",
        "defaultOptions",
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "(Lcom/facebook/fresco/vito/options/ImageOptions;)V",
        "_actualImageColorFilter",
        "Landroid/graphics/ColorFilter;",
        "get_actualImageColorFilter$options_release",
        "()Landroid/graphics/ColorFilter;",
        "set_actualImageColorFilter$options_release",
        "(Landroid/graphics/ColorFilter;)V",
        "_autoPlay",
        "",
        "get_autoPlay$options_release",
        "()Z",
        "set_autoPlay$options_release",
        "(Z)V",
        "_autoStop",
        "get_autoStop$options_release",
        "set_autoStop$options_release",
        "_backgroundDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "get_backgroundDrawable$options_release",
        "()Landroid/graphics/drawable/Drawable;",
        "set_backgroundDrawable$options_release",
        "(Landroid/graphics/drawable/Drawable;)V",
        "_customDrawableFactory",
        "Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "get_customDrawableFactory$options_release",
        "()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "set_customDrawableFactory$options_release",
        "(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)V",
        "_errorApplyRoundingOptions",
        "get_errorApplyRoundingOptions$options_release",
        "set_errorApplyRoundingOptions$options_release",
        "_errorColor",
        "",
        "get_errorColor$options_release",
        "()Ljava/lang/Integer;",
        "set_errorColor$options_release",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "_errorDrawable",
        "get_errorDrawable$options_release",
        "set_errorDrawable$options_release",
        "_errorFocusPoint",
        "Landroid/graphics/PointF;",
        "get_errorFocusPoint$options_release",
        "()Landroid/graphics/PointF;",
        "set_errorFocusPoint$options_release",
        "(Landroid/graphics/PointF;)V",
        "_errorRes",
        "get_errorRes$options_release",
        "()I",
        "set_errorRes$options_release",
        "(I)V",
        "_errorScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "get_errorScaleType$options_release",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "set_errorScaleType$options_release",
        "(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V",
        "_experimentalDynamicSize",
        "get_experimentalDynamicSize$options_release",
        "set_experimentalDynamicSize$options_release",
        "_fadeDurationMs",
        "get_fadeDurationMs$options_release",
        "set_fadeDurationMs$options_release",
        "_overlayDrawable",
        "get_overlayDrawable$options_release",
        "set_overlayDrawable$options_release",
        "_overlayRes",
        "get_overlayRes$options_release",
        "set_overlayRes$options_release",
        "_perfMediaRemountInstrumentationFix",
        "get_perfMediaRemountInstrumentationFix$options_release",
        "set_perfMediaRemountInstrumentationFix$options_release",
        "_placeholderApplyRoundingOptions",
        "get_placeholderApplyRoundingOptions$options_release",
        "set_placeholderApplyRoundingOptions$options_release",
        "_placeholderColor",
        "get_placeholderColor$options_release",
        "set_placeholderColor$options_release",
        "_placeholderDrawable",
        "get_placeholderDrawable$options_release",
        "set_placeholderDrawable$options_release",
        "_placeholderFocusPoint",
        "get_placeholderFocusPoint$options_release",
        "set_placeholderFocusPoint$options_release",
        "_placeholderRes",
        "get_placeholderRes$options_release",
        "set_placeholderRes$options_release",
        "_placeholderScaleType",
        "get_placeholderScaleType$options_release",
        "set_placeholderScaleType$options_release",
        "_progressDrawable",
        "get_progressDrawable$options_release",
        "set_progressDrawable$options_release",
        "_progressRes",
        "get_progressRes$options_release",
        "set_progressRes$options_release",
        "_progressScaleType",
        "get_progressScaleType$options_release",
        "set_progressScaleType$options_release",
        "_resizeToViewport",
        "get_resizeToViewport$options_release",
        "set_resizeToViewport$options_release",
        "autoPlay",
        "autoStop",
        "background",
        "drawable",
        "build",
        "colorFilter",
        "customDrawableFactory",
        "drawableFactory",
        "errorApplyRoundingOptions",
        "errorColor",
        "errorDrawable",
        "errorFocusPoint",
        "errorRes",
        "errorScaleType",
        "experimentalDynamicSize",
        "dynamicSize",
        "fadeDurationMs",
        "fadeInDurationMs",
        "modify",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "overlay",
        "overlayDrawable",
        "overlayRes",
        "perfMediaRemountInstrumentationFix",
        "fix",
        "placeholder",
        "placeholderScaleType",
        "placeholderApplyRoundingOptions",
        "placeholderColor",
        "placeholderFocusPoint",
        "placeholderRes",
        "progress",
        "progressScaleType",
        "progressRes",
        "resizeToViewport",
        "options_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _actualImageColorFilter:Landroid/graphics/ColorFilter;

.field private _autoPlay:Z

.field private _autoStop:Z

.field private _backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private _customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

.field private _errorApplyRoundingOptions:Z

.field private _errorColor:Ljava/lang/Integer;

.field private _errorDrawable:Landroid/graphics/drawable/Drawable;

.field private _errorFocusPoint:Landroid/graphics/PointF;

.field private _errorRes:I

.field private _errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private _experimentalDynamicSize:Z

.field private _fadeDurationMs:I

.field private _overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private _overlayRes:I

.field private _perfMediaRemountInstrumentationFix:Z

.field private _placeholderApplyRoundingOptions:Z

.field private _placeholderColor:Ljava/lang/Integer;

.field private _placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private _placeholderFocusPoint:Landroid/graphics/PointF;

.field private _placeholderRes:I

.field private _placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private _progressDrawable:Landroid/graphics/drawable/Drawable;

.field private _progressRes:I

.field private _progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private _resizeToViewport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 257
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 258
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 259
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 261
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    .line 262
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderApplyRoundingOptions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    .line 263
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 264
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 266
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 267
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 268
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 269
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    .line 270
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorApplyRoundingOptions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    .line 272
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 273
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getOverlayRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 274
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldResizeToViewport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    .line 276
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldAutoPlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    .line 277
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldAutoStop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 278
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getFadeDurationMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    .line 279
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getCustomDrawableFactory()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 280
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getExperimentalDynamicSize()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;"
        }
    .end annotation

    .line 456
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final autoPlay(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 529
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 407
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    return-object p0
.end method

.method public final autoStop(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 531
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 414
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-object p0
.end method

.method public final background(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 525
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 396
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    return-object v0
.end method

.method public build()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1

    .line 453
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V

    return-object v0
.end method

.method public final colorFilter(Landroid/graphics/ColorFilter;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 527
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 399
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final customDrawableFactory(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 539
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 446
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-object p0
.end method

.method public final errorApplyRoundingOptions(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 509
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 361
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    return-object p0
.end method

.method public final errorColor(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 499
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 336
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final errorDrawable(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 507
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 357
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final errorFocusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 505
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 351
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final errorRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 501
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 342
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 343
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final errorScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 503
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 347
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final experimentalDynamicSize(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 541
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 450
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return-object p0
.end method

.method public final fadeDurationMs(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 537
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 437
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    return-object p0
.end method

.method public final get_actualImageColorFilter$options_release()Landroid/graphics/ColorFilter;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final get_autoPlay$options_release()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    return v0
.end method

.method public final get_autoStop$options_release()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return v0
.end method

.method public final get_backgroundDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_customDrawableFactory$options_release()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-object v0
.end method

.method public final get_errorApplyRoundingOptions$options_release()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    return v0
.end method

.method public final get_errorColor$options_release()Ljava/lang/Integer;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final get_errorDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_errorFocusPoint$options_release()Landroid/graphics/PointF;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final get_errorRes$options_release()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    return v0
.end method

.method public final get_errorScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final get_experimentalDynamicSize$options_release()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return v0
.end method

.method public final get_fadeDurationMs$options_release()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    return v0
.end method

.method public final get_overlayDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_overlayRes$options_release()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    return v0
.end method

.method public final get_perfMediaRemountInstrumentationFix$options_release()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    return v0
.end method

.method public final get_placeholderApplyRoundingOptions$options_release()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    return v0
.end method

.method public final get_placeholderColor$options_release()Ljava/lang/Integer;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final get_placeholderDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_placeholderFocusPoint$options_release()Landroid/graphics/PointF;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final get_placeholderRes$options_release()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return v0
.end method

.method public final get_placeholderScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final get_progressDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final get_progressRes$options_release()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return v0
.end method

.method public final get_progressScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final get_resizeToViewport$options_release()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    return v0
.end method

.method public final overlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 523
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 392
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 393
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    return-object p0
.end method

.method public final overlayRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 521
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 387
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final perfMediaRemountInstrumentationFix(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 533
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 417
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 483
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 284
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 286
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 485
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 293
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 296
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-object p0
.end method

.method public final placeholderApplyRoundingOptions(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 497
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 331
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    return-object p0
.end method

.method public final placeholderColor(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 487
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 301
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderFocusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 495
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 326
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final placeholderRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 489
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 306
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 308
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderRes(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 491
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 315
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 316
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x0

    .line 317
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 318
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 493
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 322
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final progress(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 511
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 364
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final progress(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 513
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 368
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final progressRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 515
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 372
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return-object p0
.end method

.method public final progressRes(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 517
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 378
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 379
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final progressScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 519
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 383
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public final resizeToViewport(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 535
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 428
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    return-object p0
.end method

.method public final set_actualImageColorFilter$options_release(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final set_autoPlay$options_release(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    return-void
.end method

.method public final set_autoStop$options_release(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-void
.end method

.method public final set_backgroundDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_customDrawableFactory$options_release(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-void
.end method

.method public final set_errorApplyRoundingOptions$options_release(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    return-void
.end method

.method public final set_errorColor$options_release(Ljava/lang/Integer;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    return-void
.end method

.method public final set_errorDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_errorFocusPoint$options_release(Landroid/graphics/PointF;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public final set_errorRes$options_release(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    return-void
.end method

.method public final set_errorScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final set_experimentalDynamicSize$options_release(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_experimentalDynamicSize:Z

    return-void
.end method

.method public final set_fadeDurationMs$options_release(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    return-void
.end method

.method public final set_overlayDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_overlayRes$options_release(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    return-void
.end method

.method public final set_perfMediaRemountInstrumentationFix$options_release(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    return-void
.end method

.method public final set_placeholderApplyRoundingOptions$options_release(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    return-void
.end method

.method public final set_placeholderColor$options_release(Ljava/lang/Integer;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    return-void
.end method

.method public final set_placeholderDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_placeholderFocusPoint$options_release(Landroid/graphics/PointF;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public final set_placeholderRes$options_release(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-void
.end method

.method public final set_placeholderScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final set_progressDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final set_progressRes$options_release(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return-void
.end method

.method public final set_progressScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final set_resizeToViewport$options_release(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    return-void
.end method
