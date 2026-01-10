.class public Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
.super Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;
.source "DecodedImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
        "TT;>;>",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDecodedImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n1#1,186:1\n181#1,2:187\n181#1,2:189\n181#1,2:191\n181#1,2:193\n181#1,2:195\n181#1,2:197\n181#1,2:199\n181#1,2:201\n181#1,2:203\n181#1,2:205\n181#1,2:207\n181#1,2:209\n*S KotlinDebug\n*F\n+ 1 DecodedImageOptions.kt\ncom/facebook/fresco/vito/options/DecodedImageOptions$Builder\n*L\n125#1:187,2\n127#1:189,2\n131#1:191,2\n135#1:193,2\n145#1:195,2\n149#1:197,2\n151#1:199,2\n156#1:201,2\n164#1:203,2\n168#1:205,2\n172#1:207,2\n174#1:209,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0013\u001a\u00028\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010LJ\u0015\u0010M\u001a\u00028\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0002\u0010NJ\u0008\u0010O\u001a\u00020PH\u0016J\u0015\u0010Q\u001a\u00028\u00002\u0008\u0010Q\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010RJ\u0015\u0010\u001f\u001a\u00028\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\u0002\u0010SJ\u0013\u0010%\u001a\u00028\u00002\u0006\u0010%\u001a\u00020&\u00a2\u0006\u0002\u0010TJ\u0013\u0010+\u001a\u00028\u00002\u0006\u0010+\u001a\u00020&\u00a2\u0006\u0002\u0010TJ-\u0010U\u001a\u00028\u00002\u001d\u0010V\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020X0W\u00a2\u0006\u0002\u0008YH\u0082\u0008\u00a2\u0006\u0002\u0010ZJ\u0015\u0010[\u001a\u00028\u00002\u0008\u0010.\u001a\u0004\u0018\u00010/\u00a2\u0006\u0002\u0010\\J\u0015\u0010]\u001a\u00028\u00002\u0008\u00104\u001a\u0004\u0018\u00010&\u00a2\u0006\u0002\u0010^J\u0015\u0010_\u001a\u00028\u00002\u0008\u0010:\u001a\u0004\u0018\u00010;\u00a2\u0006\u0002\u0010`J\u0015\u0010a\u001a\u00028\u00002\u0008\u0010@\u001a\u0004\u0018\u00010A\u00a2\u0006\u0002\u0010bJ\u0015\u0010c\u001a\u00028\u00002\u0008\u0010F\u001a\u0004\u0018\u00010G\u00a2\u0006\u0002\u0010dJ\u0015\u0010e\u001a\u00028\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001e\u00104\u001a\u0004\u0018\u00010&X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u0010:\u001a\u0004\u0018\u00010;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001c\u0010F\u001a\u0004\u0018\u00010GX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010K\u00a8\u0006g"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "T",
        "Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;",
        "()V",
        "defaultOptions",
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "(Lcom/facebook/fresco/vito/options/ImageOptions;)V",
        "actualFocusPoint",
        "Landroid/graphics/PointF;",
        "getActualFocusPoint$options_release",
        "()Landroid/graphics/PointF;",
        "setActualFocusPoint$options_release",
        "(Landroid/graphics/PointF;)V",
        "actualImageScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "getActualImageScaleType$options_release",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "setActualImageScaleType$options_release",
        "(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "getBitmapConfig$options_release",
        "()Landroid/graphics/Bitmap$Config;",
        "setBitmapConfig$options_release",
        "(Landroid/graphics/Bitmap$Config;)V",
        "borderOptions",
        "Lcom/facebook/fresco/vito/options/BorderOptions;",
        "getBorderOptions$options_release",
        "()Lcom/facebook/fresco/vito/options/BorderOptions;",
        "setBorderOptions$options_release",
        "(Lcom/facebook/fresco/vito/options/BorderOptions;)V",
        "imageDecodeOptions",
        "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "getImageDecodeOptions$options_release",
        "()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "setImageDecodeOptions$options_release",
        "(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)V",
        "loadThumbnailOnly",
        "",
        "getLoadThumbnailOnly$options_release",
        "()Z",
        "setLoadThumbnailOnly$options_release",
        "(Z)V",
        "localThumbnailPreviewsEnabled",
        "getLocalThumbnailPreviewsEnabled$options_release",
        "setLocalThumbnailPreviewsEnabled$options_release",
        "postprocessor",
        "Lcom/facebook/imagepipeline/request/Postprocessor;",
        "getPostprocessor$options_release",
        "()Lcom/facebook/imagepipeline/request/Postprocessor;",
        "setPostprocessor$options_release",
        "(Lcom/facebook/imagepipeline/request/Postprocessor;)V",
        "progressiveDecodingEnabled",
        "getProgressiveDecodingEnabled$options_release",
        "()Ljava/lang/Boolean;",
        "setProgressiveDecodingEnabled$options_release",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "getResizeOptions$options_release",
        "()Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "setResizeOptions$options_release",
        "(Lcom/facebook/imagepipeline/common/ResizeOptions;)V",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "getRotationOptions$options_release",
        "()Lcom/facebook/imagepipeline/common/RotationOptions;",
        "setRotationOptions$options_release",
        "(Lcom/facebook/imagepipeline/common/RotationOptions;)V",
        "roundingOptions",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "getRoundingOptions$options_release",
        "()Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "setRoundingOptions$options_release",
        "(Lcom/facebook/fresco/vito/options/RoundingOptions;)V",
        "(Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "borders",
        "(Lcom/facebook/fresco/vito/options/BorderOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "build",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions;",
        "focusPoint",
        "(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "modify",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "postprocess",
        "(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "progressiveRendering",
        "(Ljava/lang/Boolean;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "resize",
        "(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "rotate",
        "(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "round",
        "(Lcom/facebook/fresco/vito/options/RoundingOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
        "scale",
        "(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;",
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
.field private actualFocusPoint:Landroid/graphics/PointF;

.field private actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

.field private imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private loadThumbnailOnly:Z

.field private localThumbnailPreviewsEnabled:Z

.field private postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

.field private progressiveDecodingEnabled:Ljava/lang/Boolean;

.field private resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

.field private rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;-><init>()V

    .line 101
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 2

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/EncodedImageOptions;)V

    .line 101
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 111
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 112
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 113
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 114
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 115
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getRoundingOptions()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 116
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getBorderOptions()Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 117
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 118
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->areLocalThumbnailPreviewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 120
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getLoadThumbnailOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 121
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->isProgressiveDecodingEnabled()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .line 181
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method


# virtual methods
.method public final bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 207
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 172
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 208
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final borders(Lcom/facebook/fresco/vito/options/BorderOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/BorderOptions;",
            ")TT;"
        }
    .end annotation

    .line 197
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 149
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 198
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;
    .locals 1

    .line 178
    new-instance v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/EncodedImageOptions;

    return-object v0
.end method

.method public final focusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation

    .line 201
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 156
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    .line 202
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final getActualFocusPoint$options_release()Landroid/graphics/PointF;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getActualImageScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getBitmapConfig$options_release()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getBorderOptions$options_release()Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    return-object v0
.end method

.method public final getImageDecodeOptions$options_release()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public final getLoadThumbnailOnly$options_release()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    return v0
.end method

.method public final getLocalThumbnailPreviewsEnabled$options_release()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    return v0
.end method

.method public final getPostprocessor$options_release()Lcom/facebook/imagepipeline/request/Postprocessor;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    return-object v0
.end method

.method public final getProgressiveDecodingEnabled$options_release()Ljava/lang/Boolean;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getResizeOptions$options_release()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-object v0
.end method

.method public final getRotationOptions$options_release()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public final getRoundingOptions$options_release()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-object v0
.end method

.method public final imageDecodeOptions(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
            ")TT;"
        }
    .end annotation

    .line 193
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 136
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 194
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final loadThumbnailOnly(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 205
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 169
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    .line 206
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final localThumbnailPreviewsEnabled(Z)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 203
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 165
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    .line 204
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final postprocess(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/Postprocessor;",
            ")TT;"
        }
    .end annotation

    .line 191
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 132
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 192
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final progressiveRendering(Ljava/lang/Boolean;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TT;"
        }
    .end annotation

    .line 209
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 175
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    .line 210
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final resize(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/ResizeOptions;",
            ")TT;"
        }
    .end annotation

    .line 187
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 125
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 188
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final rotate(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/RotationOptions;",
            ")TT;"
        }
    .end annotation

    .line 189
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 128
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 190
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final round(Lcom/facebook/fresco/vito/options/RoundingOptions;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/vito/options/RoundingOptions;",
            ")TT;"
        }
    .end annotation

    .line 195
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    .line 146
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 196
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final scale(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
            ")TT;"
        }
    .end annotation

    .line 199
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    if-nez p1, :cond_0

    .line 153
    sget-object p1, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object p1

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 200
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->getThis()Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    return-object p1
.end method

.method public final setActualFocusPoint$options_release(Landroid/graphics/PointF;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public final setActualImageScaleType$options_release(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->actualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public final setBitmapConfig$options_release(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final setBorderOptions$options_release(Lcom/facebook/fresco/vito/options/BorderOptions;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->borderOptions:Lcom/facebook/fresco/vito/options/BorderOptions;

    return-void
.end method

.method public final setImageDecodeOptions$options_release(Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-void
.end method

.method public final setLoadThumbnailOnly$options_release(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->loadThumbnailOnly:Z

    return-void
.end method

.method public final setLocalThumbnailPreviewsEnabled$options_release(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->localThumbnailPreviewsEnabled:Z

    return-void
.end method

.method public final setPostprocessor$options_release(Lcom/facebook/imagepipeline/request/Postprocessor;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->postprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    return-void
.end method

.method public final setProgressiveDecodingEnabled$options_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->progressiveDecodingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setResizeOptions$options_release(Lcom/facebook/imagepipeline/common/ResizeOptions;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-void
.end method

.method public final setRotationOptions$options_release(Lcom/facebook/imagepipeline/common/RotationOptions;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-void
.end method

.method public final setRoundingOptions$options_release(Lcom/facebook/fresco/vito/options/RoundingOptions;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;->roundingOptions:Lcom/facebook/fresco/vito/options/RoundingOptions;

    return-void
.end method
