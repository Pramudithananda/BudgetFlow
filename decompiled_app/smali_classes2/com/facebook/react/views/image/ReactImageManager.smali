.class public final Lcom/facebook/react/views/image/ReactImageManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactImageManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTImageView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/image/ReactImageManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/facebook/react/views/image/ReactImageView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u0000 G2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001GB+\u0008\u0017\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B5\u0008\u0017\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\nB;\u0008\u0007\u0012\u001a\u0008\u0002\u0010\u0003\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00060\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0002H\u0014J\u0018\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u001a\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020 H\u0007J\u001f\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010\"\u001a\u0004\u0018\u00010\u001dH\u0007\u00a2\u0006\u0002\u0010#J \u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020 H\u0007J\u0018\u0010\'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010(\u001a\u00020 H\u0007J\u001a\u0010)\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0007J\u001a\u0010,\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010-\u001a\u0004\u0018\u00010\u0013H\u0007J\u0018\u0010.\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u001dH\u0007J\u001a\u00100\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u00101\u001a\u0004\u0018\u000102H\u0007J\u001a\u00103\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u00104\u001a\u0004\u0018\u00010\u0013H\u0007J\u0018\u00105\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u001aH\u0007J\u001a\u00107\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010-\u001a\u0004\u0018\u00010\u0013H\u0007J\u001f\u00108\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u00109\u001a\u0004\u0018\u00010\u001dH\u0007\u00a2\u0006\u0002\u0010#J\u0018\u0010:\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u001aH\u0007J\u001a\u0010<\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010=\u001a\u0004\u0018\u00010\u0013H\u0007J\u001a\u0010>\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010?\u001a\u0004\u0018\u00010\u0013H\u0007J\u0018\u0010@\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010A\u001a\u00020 H\u0007J\u001a\u0010B\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010C\u001a\u0004\u0018\u00010+H\u0007J\u001a\u0010D\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010C\u001a\u0004\u0018\u00010+H\u0007J\u001f\u0010E\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010F\u001a\u0004\u0018\u00010\u001dH\u0007\u00a2\u0006\u0002\u0010#R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0003\u001a\u0014\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/facebook/react/views/image/ReactImageManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/facebook/react/views/image/ReactImageView;",
        "draweeControllerBuilder",
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
        "callerContext",
        "",
        "(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Ljava/lang/Object;)V",
        "globalImageLoadListener",
        "Lcom/facebook/react/views/image/GlobalImageLoadListener;",
        "(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Ljava/lang/Object;)V",
        "callerContextFactory",
        "Lcom/facebook/react/views/image/ReactCallerContextFactory;",
        "(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;)V",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "getName",
        "onAfterUpdateTransaction",
        "",
        "view",
        "setAccessible",
        "accessible",
        "",
        "setBackgroundColor",
        "backgroundColor",
        "",
        "setBlurRadius",
        "blurRadius",
        "",
        "setBorderColor",
        "borderColor",
        "(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/Integer;)V",
        "setBorderRadius",
        "index",
        "borderRadius",
        "setBorderWidth",
        "borderWidth",
        "setBoxShadow",
        "shadows",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setDefaultSource",
        "source",
        "setFadeDuration",
        "durationMs",
        "setHeaders",
        "headers",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setInternal_AnalyticsTag",
        "analyticTag",
        "setLoadHandlersRegistered",
        "shouldNotifyLoadEvents",
        "setLoadingIndicatorSource",
        "setOverlayColor",
        "overlayColor",
        "setProgressiveRenderingEnabled",
        "enabled",
        "setResizeMethod",
        "resizeMethod",
        "setResizeMode",
        "resizeMode",
        "setResizeMultiplier",
        "resizeMultiplier",
        "setSource",
        "sources",
        "setSrc",
        "setTintColor",
        "tintColor",
        "Companion",
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
.field public static final Companion:Lcom/facebook/react/views/image/ReactImageManager$Companion;

.field private static final ON_ERROR:Ljava/lang/String; = "onError"

.field private static final ON_LOAD:Ljava/lang/String; = "onLoad"

.field private static final ON_LOAD_END:Ljava/lang/String; = "onLoadEnd"

.field private static final ON_LOAD_START:Ljava/lang/String; = "onLoadStart"

.field private static final ON_PROGRESS:Ljava/lang/String; = "onProgress"

.field public static final REACT_CLASS:Ljava/lang/String; = "RCTImageView"

.field private static final REGISTRATION_NAME:Ljava/lang/String; = "registrationName"


# instance fields
.field private callerContext:Ljava/lang/Object;

.field private final callerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

.field private final draweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;"
        }
    .end annotation
.end field

.field private final globalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/image/ReactImageManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/image/ReactImageManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/image/ReactImageManager;->Companion:Lcom/facebook/react/views/image/ReactImageManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/views/image/ReactImageManager;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;)V"
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/views/image/ReactImageManager;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;",
            "Lcom/facebook/react/views/image/GlobalImageLoadListener;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/views/image/ReactImageManager;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;",
            "Lcom/facebook/react/views/image/GlobalImageLoadListener;",
            "Lcom/facebook/react/views/image/ReactCallerContextFactory;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageManager;->draweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 41
    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageManager;->globalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

    .line 42
    iput-object p3, p0, Lcom/facebook/react/views/image/ReactImageManager;->callerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 39
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/views/image/ReactImageManager;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;",
            "Lcom/facebook/react/views/image/GlobalImageLoadListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use the constructor with ReactCallerContextFactory instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ReactImageManager(draweeControllerBuilder, globalImageLoadListener, callerContextFactory)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/views/image/ReactImageManager;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;)V

    .line 83
    iput-object p3, p0, Lcom/facebook/react/views/image/ReactImageManager;->callerContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "****>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use the constructor with ReactCallerContextFactory instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ReactImageManager(draweeControllerBuilder, globalImageLoadListener, callerContextFactory)"
            imports = {}
        .end subannotation
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/react/views/image/ReactImageManager;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Lcom/facebook/react/views/image/ReactCallerContextFactory;)V

    .line 64
    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageManager;->callerContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/image/ReactImageManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/image/ReactImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/image/ReactImageView;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageManager;->callerContext:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageManager;->callerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/views/image/ReactCallerContextFactory;->getOrCreateCallerContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 90
    :cond_1
    :goto_0
    new-instance v1, Lcom/facebook/react/views/image/ReactImageView;

    .line 91
    check-cast p1, Landroid/content/Context;

    .line 92
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageManager;->draweeControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageManager;->globalImageLoadListener:Lcom/facebook/react/views/image/GlobalImageLoadListener;

    .line 90
    invoke-direct {v1, p1, v2, v3, v0}, Lcom/facebook/react/views/image/ReactImageView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/react/views/image/GlobalImageLoadListener;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-super {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 284
    :cond_0
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->eventNameForType(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "onLoadStart"

    const-string v3, "registrationName"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 283
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->eventNameForType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onProgress"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->eventNameForType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLoad"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->eventNameForType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onError"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->eventNameForType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLoadEnd"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "RCTImageView"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/image/ReactImageManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/image/ReactImageView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/image/ReactImageView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/SimpleViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 294
    invoke-virtual {p1}, Lcom/facebook/react/views/image/ReactImageView;->maybeUpdateView()V

    return-void
.end method

.method public final setAccessible(Lcom/facebook/react/views/image/ReactImageView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessible"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic setBackgroundColor(Landroid/view/View;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/image/ReactImageManager;->setBackgroundColor(Lcom/facebook/react/views/image/ReactImageView;I)V

    return-void
.end method

.method public setBackgroundColor(Lcom/facebook/react/views/image/ReactImageView;I)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 277
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/SimpleViewManager;->setBackgroundColor(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public final setBlurRadius(Lcom/facebook/react/views/image/ReactImageView;F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "blurRadius"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setBlurRadius(F)V

    return-void
.end method

.method public final setBorderColor(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "borderColor"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 148
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setBorderColor(I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setBorderColor(I)V

    :goto_0
    return-void
.end method

.method public final setBorderRadius(Lcom/facebook/react/views/image/ReactImageView;IF)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p3, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    move-object p3, v0

    .line 187
    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-static {p1, p2, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, p3}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result p3

    :cond_2
    if-nez p2, :cond_3

    .line 196
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/image/ReactImageView;->setBorderRadius(F)V

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 198
    invoke-virtual {p1, p3, p2}, Lcom/facebook/react/views/image/ReactImageView;->setBorderRadius(FI)V

    :goto_1
    return-void
.end method

.method public final setBorderWidth(Lcom/facebook/react/views/image/ReactImageView;F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderWidth"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setBorderWidth(F)V

    :goto_0
    return-void
.end method

.method public final setBoxShadow(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "BoxShadow"
        name = "boxShadow"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_0
    return-void
.end method

.method public final setDefaultSource(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "defaultSrc"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setDefaultSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setFadeDuration(Lcom/facebook/react/views/image/ReactImageView;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fadeDuration"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setFadeDuration(I)V

    return-void
.end method

.method public final setHeaders(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "headers"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setHeaders(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_0
    return-void
.end method

.method public final setInternal_AnalyticsTag(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "internal_analyticTag"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageManager;->callerContextFactory:Lcom/facebook/react/views/image/ReactCallerContextFactory;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/facebook/react/views/image/ReactImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/views/image/ReactCallerContextFactory;->getOrCreateCallerContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->updateCallerContext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setLoadHandlersRegistered(Lcom/facebook/react/views/image/ReactImageView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "shouldNotifyLoadEvents"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setShouldNotifyLoadEvents(Z)V

    return-void
.end method

.method public final setLoadingIndicatorSource(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "loadingIndicatorSrc"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setLoadingIndicatorSource(Ljava/lang/String;)V

    return-void
.end method

.method public final setOverlayColor(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "overlayColor"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 158
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setOverlayColor(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setOverlayColor(I)V

    :goto_0
    return-void
.end method

.method public final setProgressiveRenderingEnabled(Lcom/facebook/react/views/image/ReactImageView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "progressiveRenderingEnabled"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setProgressiveRenderingEnabled(Z)V

    return-void
.end method

.method public final setResizeMethod(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMethod"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 211
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x37b2634c

    if-eq v0, v1, :cond_3

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_2

    const v1, 0x683094a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "scale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    sget-object p2, Lcom/facebook/react/views/image/ImageResizeMethod;->SCALE:Lcom/facebook/react/views/image/ImageResizeMethod;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setResizeMethod(Lcom/facebook/react/views/image/ImageResizeMethod;)V

    goto :goto_1

    .line 211
    :cond_2
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    const-string v0, "resize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    :goto_0
    sget-object v0, Lcom/facebook/react/views/image/ImageResizeMethod;->AUTO:Lcom/facebook/react/views/image/ImageResizeMethod;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/image/ReactImageView;->setResizeMethod(Lcom/facebook/react/views/image/ImageResizeMethod;)V

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid resize method: \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_4
    sget-object p2, Lcom/facebook/react/views/image/ImageResizeMethod;->RESIZE:Lcom/facebook/react/views/image/ImageResizeMethod;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setResizeMethod(Lcom/facebook/react/views/image/ImageResizeMethod;)V

    goto :goto_1

    .line 213
    :cond_5
    sget-object p2, Lcom/facebook/react/views/image/ImageResizeMethod;->AUTO:Lcom/facebook/react/views/image/ImageResizeMethod;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setResizeMethod(Lcom/facebook/react/views/image/ImageResizeMethod;)V

    :goto_1
    return-void
.end method

.method public final setResizeMode(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-static {p2}, Lcom/facebook/react/views/image/ImageResizeMode;->toScaleType(Ljava/lang/String;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/image/ReactImageView;->setScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 206
    invoke-static {p2}, Lcom/facebook/react/views/image/ImageResizeMode;->toTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setTileMode(Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public final setResizeMultiplier(Lcom/facebook/react/views/image/ReactImageView;F)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMultiplier"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid resize multiplier: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setResizeMultiplier(F)V

    return-void
.end method

.method public final setSource(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/image/ReactImageView;->setSource(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public final setSrc(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "src"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/image/ReactImageManager;->setSource(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public final setTintColor(Lcom/facebook/react/views/image/ReactImageView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "tintColor"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/facebook/react/views/image/ReactImageView;->clearColorFilter()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/views/image/ReactImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method
