.class public final Lcom/facebook/react/views/image/ReactImageView;
.super Lcom/facebook/drawee/view/GenericDraweeView;
.source "ReactImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/image/ReactImageView$Companion;,
        Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;,
        Lcom/facebook/react/views/image/ReactImageView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactImageView.kt\ncom/facebook/react/views/image/ReactImageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,726:1\n1#2:727\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 t2\u00020\u0001:\u0002tuB9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\u0011H\u0002J\u0012\u0010C\u001a\u0004\u0018\u00010\u001b2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0008\u0010D\u001a\u00020\'H\u0002J\u0008\u0010E\u001a\u00020\'H\u0016J\u0006\u0010F\u001a\u00020AJ\u0010\u0010G\u001a\u00020A2\u0006\u0010H\u001a\u00020\u001bH\u0002J\u0010\u0010I\u001a\u00020A2\u0006\u0010J\u001a\u00020\'H\u0002J\u0010\u0010K\u001a\u00020A2\u0006\u0010L\u001a\u00020MH\u0016J(\u0010N\u001a\u00020A2\u0006\u0010O\u001a\u00020\u000c2\u0006\u0010P\u001a\u00020\u000c2\u0006\u0010Q\u001a\u00020\u000c2\u0006\u0010R\u001a\u00020\u000cH\u0014J\u0010\u0010S\u001a\u00020A2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u000e\u0010T\u001a\u00020A2\u0006\u0010U\u001a\u00020\u0013J\u000e\u0010V\u001a\u00020A2\u0006\u0010\u000f\u001a\u00020\u000cJ\u000e\u0010W\u001a\u00020A2\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010W\u001a\u00020A2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010X\u001a\u00020\u000cJ\u000e\u0010Y\u001a\u00020A2\u0006\u0010\u0014\u001a\u00020\u0013J\u0018\u0010Z\u001a\u00020A2\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0007J\u0010\u0010\\\u001a\u00020A2\u0008\u0010]\u001a\u0004\u0018\u00010^J\u000e\u0010_\u001a\u00020A2\u0006\u0010`\u001a\u00020\u000cJ\u0010\u0010a\u001a\u00020A2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010b\u001a\u00020A2\u0008\u0010]\u001a\u0004\u0018\u00010^J\u000e\u0010c\u001a\u00020A2\u0006\u0010-\u001a\u00020\u000cJ\u000e\u0010d\u001a\u00020A2\u0006\u0010e\u001a\u00020\'J\u000e\u0010f\u001a\u00020A2\u0006\u00101\u001a\u000202J\u000e\u0010g\u001a\u00020A2\u0006\u0010h\u001a\u00020\u0013J\u000e\u0010i\u001a\u00020A2\u0006\u00108\u001a\u000209J\u000e\u0010j\u001a\u00020A2\u0006\u0010k\u001a\u00020\'J\u0010\u0010l\u001a\u00020A2\u0008\u0010:\u001a\u0004\u0018\u00010mJ\u0008\u0010n\u001a\u00020AH\u0002J\u000e\u0010o\u001a\u00020A2\u0006\u0010<\u001a\u00020=J\u0010\u0010p\u001a\u00020\'2\u0006\u0010!\u001a\u00020\u0016H\u0002J\u0010\u0010q\u001a\u00020A2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0012\u0010r\u001a\u00020A2\u0008\u0010s\u001a\u0004\u0018\u00010^H\u0002R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010!\u001a\u0004\u0018\u00010\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u00020\'8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u00104\u001a\u0004\u0018\u0001058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00160;X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010>\u001a\u0008\u0018\u00010?R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006v"
    }
    d2 = {
        "Lcom/facebook/react/views/image/ReactImageView;",
        "Lcom/facebook/drawee/view/GenericDraweeView;",
        "context",
        "Landroid/content/Context;",
        "draweeControllerBuilder",
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
        "globalImageLoadListener",
        "Lcom/facebook/react/views/image/GlobalImageLoadListener;",
        "callerContext",
        "",
        "(Landroid/content/Context;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Ljava/lang/Object;)V",
        "backgroundColor",
        "",
        "backgroundImageDrawable",
        "Lcom/facebook/drawee/drawable/RoundedColorDrawable;",
        "borderColor",
        "borderCornerRadii",
        "",
        "borderRadius",
        "",
        "borderWidth",
        "cachedImageSource",
        "Lcom/facebook/react/views/imagehelper/ImageSource;",
        "controllerForTesting",
        "Lcom/facebook/drawee/controller/ControllerListener;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "defaultImageDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "downloadListener",
        "Lcom/facebook/react/views/image/ReactImageDownloadListener;",
        "fadeDurationMs",
        "headers",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "imageSource",
        "getImageSource$ReactAndroid_release",
        "()Lcom/facebook/react/views/imagehelper/ImageSource;",
        "setImageSource$ReactAndroid_release",
        "(Lcom/facebook/react/views/imagehelper/ImageSource;)V",
        "isDirty",
        "",
        "isTiled",
        "()Z",
        "iterativeBoxBlurPostProcessor",
        "Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;",
        "loadingImageDrawable",
        "overlayColor",
        "progressiveRenderingEnabled",
        "reactBackgroundManager",
        "Lcom/facebook/react/views/view/ReactViewBackgroundManager;",
        "resizeMethod",
        "Lcom/facebook/react/views/image/ImageResizeMethod;",
        "resizeMultiplier",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "getResizeOptions",
        "()Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "scaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "sources",
        "",
        "tileMode",
        "Landroid/graphics/Shader$TileMode;",
        "tilePostprocessor",
        "Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;",
        "getCornerRadii",
        "",
        "computedCorners",
        "getDrawableIfUnsupported",
        "hasMultipleSources",
        "hasOverlappingRendering",
        "maybeUpdateView",
        "maybeUpdateViewFromDrawable",
        "drawable",
        "maybeUpdateViewFromRequest",
        "doResize",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "setBackgroundColor",
        "setBlurRadius",
        "blurRadius",
        "setBorderColor",
        "setBorderRadius",
        "position",
        "setBorderWidth",
        "setControllerListener",
        "controllerListener",
        "setDefaultSource",
        "name",
        "",
        "setFadeDuration",
        "durationMs",
        "setHeaders",
        "setLoadingIndicatorSource",
        "setOverlayColor",
        "setProgressiveRenderingEnabled",
        "enabled",
        "setResizeMethod",
        "setResizeMultiplier",
        "multiplier",
        "setScaleType",
        "setShouldNotifyLoadEvents",
        "shouldNotify",
        "setSource",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setSourceImage",
        "setTileMode",
        "shouldResize",
        "updateCallerContext",
        "warnImageSource",
        "uri",
        "Companion",
        "TilePostprocessor",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/react/views/image/ReactImageView$Companion;

.field public static final REMOTE_IMAGE_FADE_DURATION_MS:I = 0x12c

.field private static final computedCornerRadii:[F

.field private static final tileMatrix:Landroid/graphics/Matrix;


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

.field private borderColor:I

.field private borderCornerRadii:[F

.field private borderRadius:F

.field private borderWidth:F

.field private cachedImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

.field private callerContext:Ljava/lang/Object;

.field private controllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "Lcom/facebook/imagepipeline/image/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private defaultImageDrawable:Landroid/graphics/drawable/Drawable;

.field private downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/views/image/ReactImageDownloadListener<",
            "Lcom/facebook/imagepipeline/image/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final draweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;"
        }
    .end annotation
.end field

.field private fadeDurationMs:I

.field private final globalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

.field private headers:Lcom/facebook/react/bridge/ReadableMap;

.field private imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

.field private isDirty:Z

.field private iterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

.field private loadingImageDrawable:Landroid/graphics/drawable/Drawable;

.field private overlayColor:I

.field private progressiveRenderingEnabled:Z

.field private final reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private resizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

.field private resizeMultiplier:F

.field private scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/views/imagehelper/ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private tileMode:Landroid/graphics/Shader$TileMode;

.field private tilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/image/ReactImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/image/ReactImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->Companion:Lcom/facebook/react/views/image/ReactImageView$Companion;

    const/4 v0, 0x4

    .line 712
    new-array v0, v0, [F

    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->computedCornerRadii:[F

    .line 716
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/facebook/react/views/image/ReactImageView;->tileMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;",
            "Lcom/facebook/react/views/image/GlobalImageLoadListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draweeControllerBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/facebook/react/views/image/ReactImageView;->Companion:Lcom/facebook/react/views/image/ReactImageView$Companion;

    invoke-static {v0, p1}, Lcom/facebook/react/views/image/ReactImageView$Companion;->access$buildHierarchy(Lcom/facebook/react/views/image/ReactImageView$Companion;Landroid/content/Context;)Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    .line 90
    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageView;->draweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 91
    iput-object p3, p0, Lcom/facebook/react/views/image/ReactImageView;->globalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

    .line 92
    iput-object p4, p0, Lcom/facebook/react/views/image/ReactImageView;->callerContext:Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 105
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->borderRadius:F

    .line 107
    invoke-static {}, Lcom/facebook/react/views/image/ImageResizeMode;->defaultValue()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 108
    invoke-static {}, Lcom/facebook/react/views/image/ImageResizeMode;->defaultTileMode()Landroid/graphics/Shader$TileMode;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->tileMode:Landroid/graphics/Shader$TileMode;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->fadeDurationMs:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 117
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMultiplier:F

    .line 118
    new-instance p1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    move-object p2, p0

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 119
    sget-object p2, Lcom/facebook/react/views/image/ImageResizeMethod;->AUTO:Lcom/facebook/react/views/image/ImageResizeMethod;

    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    .line 122
    const-string p2, "hidden"

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setOverflow(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/image/ReactImageView;->setLegacyVisibilityHandlingEnabled(Z)V

    return-void
.end method

.method public static final synthetic access$getScaleType$p(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/facebook/react/views/image/ReactImageView;->scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public static final synthetic access$getTileMatrix$cp()Landroid/graphics/Matrix;
    .locals 1

    .line 87
    sget-object v0, Lcom/facebook/react/views/image/ReactImageView;->tileMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static final synthetic access$getTileMode$p(Lcom/facebook/react/views/image/ReactImageView;)Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/facebook/react/views/image/ReactImageView;->tileMode:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private final getCornerRadii([F)V
    .locals 6

    .line 582
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderRadius:F

    invoke-static {v0}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderRadius:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->borderCornerRadii:[F

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x4

    new-array v3, v1, [F

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    const/high16 v5, 0x7fc00000    # Float.NaN

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 585
    :cond_2
    aget v3, v1, v2

    invoke-static {v3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_3

    aget v3, v1, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    aput v3, p1, v2

    const/4 v2, 0x1

    .line 586
    aget v3, v1, v2

    invoke-static {v3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_4

    aget v3, v1, v2

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    aput v3, p1, v2

    const/4 v2, 0x2

    .line 587
    aget v3, v1, v2

    invoke-static {v3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_5

    aget v3, v1, v2

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    aput v3, p1, v2

    const/4 v2, 0x3

    .line 588
    aget v3, v1, v2

    invoke-static {v3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_6

    aget v0, v1, v2

    :cond_6
    aput v0, p1, v2

    return-void
.end method

.method private final getDrawableIfUnsupported(Lcom/facebook/react/views/imagehelper/ImageSource;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 645
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->loadVectorDrawablesOnImages()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 652
    :cond_1
    sget-object p1, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->Companion:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object p1

    .line 653
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->isVectorDrawable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private final getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 8

    .line 662
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMultiplier:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 663
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMultiplier:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/common/ResizeOptions;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(IIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final hasMultipleSources()Z
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isTiled()Z
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->tileMode:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final maybeUpdateViewFromDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 554
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 564
    sget-object v2, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createLoadStartEvent(II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    .line 563
    invoke-interface {v0, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setImage(Landroid/graphics/drawable/Drawable;FZ)V

    if-eqz v0, :cond_3

    .line 568
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-eqz p1, :cond_3

    .line 570
    sget-object v2, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    .line 571
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v3

    .line 572
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v4

    .line 573
    iget-object v5, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v5, v1

    .line 574
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v6

    .line 575
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v7

    .line 570
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createLoadEvent(IILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 569
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 577
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createLoadEndEvent(II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    .line 576
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_3
    return-void
.end method

.method private final maybeUpdateViewFromRequest(Z)V
    .locals 6

    .line 484
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 486
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 487
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->iterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->tilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    if-eqz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_2
    sget-object v2, Lcom/facebook/react/views/image/MultiPostprocessor;->Companion:Lcom/facebook/react/views/image/MultiPostprocessor$Companion;

    invoke-virtual {v2, v1}, Lcom/facebook/react/views/image/MultiPostprocessor$Companion;->from(Ljava/util/List;)Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 491
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 494
    :goto_0
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 495
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setPostprocessor(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 496
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 497
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setAutoRotateEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 498
    iget-boolean v4, p0, Lcom/facebook/react/views/image/ReactImageView;->progressiveRenderingEnabled:Z

    invoke-virtual {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 501
    sget-object v4, Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest;->Companion:Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/react/views/image/ReactImageView;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v4, v2, v5}, Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest$Companion;->fromBuilderWithHeaders(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/modules/fresco/ReactNetworkImageRequest;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 503
    iget-object v4, p0, Lcom/facebook/react/views/image/ReactImageView;->globalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

    if-eqz v4, :cond_4

    invoke-interface {v4, v0}, Lcom/facebook/react/views/image/GlobalImageLoadListener;->onLoadAttempt(Landroid/net/Uri;)V

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->draweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    const-string v4, "null cannot be cast to non-null type com.facebook.drawee.controller.AbstractDraweeControllerBuilder<*, com.facebook.imagepipeline.request.ImageRequest, com.facebook.common.references.CloseableReference<com.facebook.imagepipeline.image.CloseableImage>, com.facebook.imagepipeline.image.ImageInfo>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 515
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 517
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->callerContext:Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 519
    :cond_5
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->cachedImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-eqz v2, :cond_6

    .line 521
    invoke-virtual {v2}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 522
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setPostprocessor(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 523
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 524
    invoke-virtual {p1, v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setAutoRotateEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 525
    iget-boolean v1, p0, Lcom/facebook/react/views/image/ReactImageView;->progressiveRenderingEnabled:Z

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 527
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setLowResImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 530
    :cond_6
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->controllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v1, :cond_7

    .line 532
    new-instance p1, Lcom/facebook/drawee/controller/ForwardingControllerListener;

    invoke-direct {p1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    check-cast v1, Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 534
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->controllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->addListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 535
    check-cast p1, Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    goto :goto_1

    .line 536
    :cond_7
    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->controllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    if-eqz v1, :cond_8

    .line 537
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 539
    check-cast p1, Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 542
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    if-eqz p1, :cond_a

    .line 543
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setProgressBarImage(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_a
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/interfaces/DraweeController;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/image/ReactImageView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 550
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->reset()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    :cond_b
    :goto_2
    return-void
.end method

.method private final setSourceImage()V
    .locals 4

    const/4 v0, 0x0

    .line 612
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 613
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    sget-object v1, Lcom/facebook/react/views/imagehelper/ImageSource;->Companion:Lcom/facebook/react/views/imagehelper/ImageSource$Companion;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/imagehelper/ImageSource$Companion;->getTransparentBitmapImageSource(Landroid/content/Context;)Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->hasMultipleSources()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;->getBestSourceForSize(IILjava/util/List;)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    move-result-object v0

    .line 617
    iget-object v1, v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;->bestResult:Lcom/facebook/react/views/imagehelper/ImageSource;

    iput-object v1, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 618
    iget-object v0, v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;->bestResultInCache:Lcom/facebook/react/views/imagehelper/ImageSource;

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->cachedImageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-void

    .line 621
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/imagehelper/ImageSource;

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-void
.end method

.method private final shouldResize(Lcom/facebook/react/views/imagehelper/ImageSource;)Z
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    sget-object v1, Lcom/facebook/react/views/image/ReactImageView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/views/image/ImageResizeMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    .line 631
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isLocalContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/util/UriUtil;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private final warnImageSource(Ljava/lang/String;)V
    .locals 3

    .line 679
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReactImageView: Image source \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" doesn\'t exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/react/util/RNLog;->w(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getImageSource$ReactAndroid_release()Lcom/facebook/react/views/imagehelper/ImageSource;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final maybeUpdateView()V
    .locals 10

    .line 407
    iget-boolean v0, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->hasMultipleSources()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    return-void

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->setSourceImage()V

    .line 417
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    if-nez v0, :cond_3

    return-void

    .line 418
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/react/views/image/ReactImageView;->shouldResize(Lcom/facebook/react/views/imagehelper/ImageSource;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 420
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_4
    return-void

    .line 425
    :cond_5
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->isTiled()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHeight()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_6
    return-void

    .line 431
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .line 432
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 434
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->defaultImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    .line 435
    iget-object v4, p0, Lcom/facebook/react/views/image/ReactImageView;->scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 438
    :cond_8
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->loadingImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 439
    sget-object v4, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 442
    :cond_9
    sget-object v3, Lcom/facebook/react/views/image/ReactImageView;->computedCornerRadii:[F

    invoke-direct {p0, v3}, Lcom/facebook/react/views/image/ReactImageView;->getCornerRadii([F)V

    .line 444
    invoke-virtual {v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 447
    aget v6, v3, v5

    const/4 v7, 0x1

    .line 448
    aget v7, v3, v7

    const/4 v8, 0x2

    .line 449
    aget v8, v3, v8

    const/4 v9, 0x3

    .line 450
    aget v3, v3, v9

    .line 446
    invoke-virtual {v4, v6, v7, v8, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 452
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->backgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    if-eqz v3, :cond_b

    .line 453
    iget v6, p0, Lcom/facebook/react/views/image/ReactImageView;->borderColor:I

    iget v7, p0, Lcom/facebook/react/views/image/ReactImageView;->borderWidth:F

    invoke-virtual {v3, v6, v7}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->setBorder(IF)V

    .line 454
    invoke-virtual {v4}, Lcom/facebook/drawee/generic/RoundingParams;->getCornersRadii()[F

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v6}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->setRadii([F)V

    .line 455
    :cond_a
    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :cond_b
    iget v3, p0, Lcom/facebook/react/views/image/ReactImageView;->borderColor:I

    iget v6, p0, Lcom/facebook/react/views/image/ReactImageView;->borderWidth:F

    invoke-virtual {v4, v3, v6}, Lcom/facebook/drawee/generic/RoundingParams;->setBorder(IF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 458
    iget v3, p0, Lcom/facebook/react/views/image/ReactImageView;->overlayColor:I

    if-eqz v3, :cond_c

    .line 459
    invoke-virtual {v4, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setOverlayColor(I)Lcom/facebook/drawee/generic/RoundingParams;

    goto :goto_0

    .line 462
    :cond_c
    sget-object v3, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/generic/RoundingParams;->setRoundingMethod(Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 464
    :goto_0
    invoke-virtual {v2, v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 468
    :cond_d
    iget v3, p0, Lcom/facebook/react/views/image/ReactImageView;->fadeDurationMs:I

    if-ltz v3, :cond_e

    goto :goto_1

    .line 469
    :cond_e
    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v5

    goto :goto_1

    :cond_f
    const/16 v3, 0x12c

    .line 466
    :goto_1
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setFadeDuration(I)V

    .line 473
    invoke-direct {p0, v0}, Lcom/facebook/react/views/image/ReactImageView;->getDrawableIfUnsupported(Lcom/facebook/react/views/imagehelper/ImageSource;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 475
    invoke-direct {p0, v0}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateViewFromDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 477
    :cond_10
    invoke-direct {p0, v1}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateViewFromRequest(Z)V

    .line 480
    :goto_2
    iput-boolean v5, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->clipToPaddingBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useNewReactImageViewBackgroundDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->maybeClipToPaddingBox(Landroid/graphics/Canvas;)V

    .line 403
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/GenericDraweeView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/GenericDraweeView;->onSizeChanged(IIII)V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 601
    iget-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->hasMultipleSources()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->isTiled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    .line 602
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateView()V

    :cond_2
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 216
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useNewReactImageViewBackgroundDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->backgroundColor:I

    if-eq v0, p1, :cond_2

    .line 221
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->backgroundColor:I

    .line 222
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    invoke-direct {v0, p1}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->backgroundImageDrawable:Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setBlurRadius(F)V
    .locals 2

    .line 205
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;-><init>(II)V

    move-object p1, v1

    .line 206
    :goto_0
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->iterativeBoxBlurPostProcessor:Lcom/facebook/imagepipeline/postprocessors/IterativeBoxBlurPostProcessor;

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    return-void
.end method

.method public final setBorderColor(I)V
    .locals 2

    .line 228
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useNewReactImageViewBackgroundDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(ILjava/lang/Integer;)V

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderColor:I

    if-eq v0, p1, :cond_2

    .line 233
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->borderColor:I

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setBorderRadius(F)V
    .locals 2

    .line 258
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result p1

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    move-object p1, v0

    .line 262
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    invoke-static {v0, v1, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_1

    .line 263
    :cond_1
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useNewReactImageViewBackgroundDrawing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    goto :goto_1

    .line 265
    :cond_2
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderRadius:F

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->borderRadius:F

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final setBorderRadius(FI)V
    .locals 6

    .line 272
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v1, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result p1

    sget-object v0, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v1, p1, v0}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    .line 276
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p1, p2, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_2

    .line 277
    :cond_1
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useNewReactImageViewBackgroundDrawing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    add-int/2addr p2, v2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    goto :goto_2

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderCornerRadii:[F

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 281
    new-array v3, v0, [F

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    const/high16 v5, 0x7fc00000    # Float.NaN

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-object v3, p0, Lcom/facebook/react/views/image/ReactImageView;->borderCornerRadii:[F

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderCornerRadii:[F

    if-eqz v0, :cond_5

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 285
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderCornerRadii:[F

    if-eqz v0, :cond_6

    aput p1, v0, p2

    .line 286
    :cond_6
    iput-boolean v2, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final setBorderWidth(F)V
    .locals 2

    .line 246
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v0

    .line 247
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useNewReactImageViewBackgroundDrawing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->reactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    goto :goto_0

    .line 251
    :cond_1
    iget p1, p0, Lcom/facebook/react/views/image/ReactImageView;->borderWidth:F

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result p1

    if-nez p1, :cond_2

    .line 252
    iput v0, p0, Lcom/facebook/react/views/image/ReactImageView;->borderWidth:F

    const/4 p1, 0x1

    .line 253
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "Lcom/facebook/imagepipeline/image/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->controllerForTesting:Lcom/facebook/drawee/controller/ControllerListener;

    const/4 p1, 0x1

    .line 594
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    .line 595
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateView()V

    return-void
.end method

.method public final setDefaultSource(Ljava/lang/String;)V
    .locals 3

    .line 363
    sget-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->Companion:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 364
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->defaultImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->defaultImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_0
    return-void
.end method

.method public final setFadeDuration(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->fadeDurationMs:I

    return-void
.end method

.method public final setHeaders(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->headers:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method

.method public final setImageSource$ReactAndroid_release(Lcom/facebook/react/views/imagehelper/ImageSource;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->imageSource:Lcom/facebook/react/views/imagehelper/ImageSource;

    return-void
.end method

.method public final setLoadingIndicatorSource(Ljava/lang/String;)V
    .locals 3

    .line 371
    sget-object v0, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->Companion:Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    const/16 v1, 0x3e8

    invoke-direct {v0, p1, v1}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->loadingImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 374
    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->loadingImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_1
    return-void
.end method

.method public final setOverlayColor(I)V
    .locals 1

    .line 239
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 240
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->overlayColor:I

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_0
    return-void
.end method

.method public final setProgressiveRenderingEnabled(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->progressiveRenderingEnabled:Z

    return-void
.end method

.method public final setResizeMethod(Lcom/facebook/react/views/image/ImageResizeMethod;)V
    .locals 1

    const-string v0, "resizeMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    if-eq v0, p1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMethod:Lcom/facebook/react/views/image/ImageResizeMethod;

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_0
    return-void
.end method

.method public final setResizeMultiplier(F)V
    .locals 4

    .line 314
    iget v0, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMultiplier:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 316
    iput p1, p0, Lcom/facebook/react/views/image/ReactImageView;->resizeMultiplier:F

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_0
    return-void
.end method

.method public final setScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1

    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eq v0, p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_0
    return-void
.end method

.method public final setShouldNotifyLoadEvents(Z)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 148
    new-instance v0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/views/image/ReactImageView;)V

    check-cast v0, Lcom/facebook/react/views/image/ReactImageDownloadListener;

    .line 147
    iput-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->downloadListener:Lcom/facebook/react/views/image/ReactImageDownloadListener;

    .line 200
    :goto_1
    iput-boolean v1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    return-void
.end method

.method public final setSource(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    .line 324
    const-string v4, "getContext(...)"

    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 326
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "uri"

    if-ne v5, v3, :cond_2

    .line 328
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 329
    new-instance v5, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0xc

    const/16 v16, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v16}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;DDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 330
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/image/ReactImageView;->warnImageSource(Ljava/lang/String;)V

    .line 332
    sget-object v1, Lcom/facebook/react/views/imagehelper/ImageSource;->Companion:Lcom/facebook/react/views/imagehelper/ImageSource$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/facebook/react/views/imagehelper/ImageSource$Companion;->getTransparentBitmapImageSource(Landroid/content/Context;)Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v5

    .line 334
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    :goto_0
    if-ge v6, v5, :cond_5

    .line 337
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v8

    .line 339
    new-instance v16, Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-interface {v8, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 342
    const-string/jumbo v9, "width"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 343
    const-string v9, "height"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v9, v16

    .line 339
    invoke-direct/range {v9 .. v15}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;DD)V

    .line 344
    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 345
    invoke-interface {v8, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/facebook/react/views/image/ReactImageView;->warnImageSource(Ljava/lang/String;)V

    .line 346
    sget-object v8, Lcom/facebook/react/views/imagehelper/ImageSource;->Companion:Lcom/facebook/react/views/imagehelper/ImageSource$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/facebook/react/views/imagehelper/ImageSource$Companion;->getTransparentBitmapImageSource(Landroid/content/Context;)Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v16

    :cond_3
    move-object/from16 v8, v16

    .line 348
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 325
    :cond_4
    :goto_1
    sget-object v1, Lcom/facebook/react/views/imagehelper/ImageSource;->Companion:Lcom/facebook/react/views/imagehelper/ImageSource$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/facebook/react/views/imagehelper/ImageSource$Companion;->getTransparentBitmapImageSource(Landroid/content/Context;)Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 357
    :cond_6
    iget-object v1, v0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 358
    iget-object v1, v0, Lcom/facebook/react/views/image/ReactImageView;->sources:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    iput-boolean v3, v0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    return-void
.end method

.method public final setTileMode(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    const-string v0, "tileMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->tileMode:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_1

    .line 300
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->tileMode:Landroid/graphics/Shader$TileMode;

    .line 301
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageView;->isTiled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;-><init>(Lcom/facebook/react/views/image/ReactImageView;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->tilePostprocessor:Lcom/facebook/react/views/image/ReactImageView$TilePostprocessor;

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_1
    return-void
.end method

.method public final updateCallerContext(Ljava/lang/Object;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView;->callerContext:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView;->callerContext:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/facebook/react/views/image/ReactImageView;->isDirty:Z

    :cond_0
    return-void
.end method
