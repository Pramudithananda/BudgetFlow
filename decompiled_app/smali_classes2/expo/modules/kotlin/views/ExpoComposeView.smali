.class public abstract Lexpo/modules/kotlin/views/ExpoComposeView;
.super Lexpo/modules/kotlin/views/ExpoView;
.source "ExpoComposeView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        ">",
        "Lexpo/modules/kotlin/views/ExpoView;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0014J\u001e\u0010\u001e\u001a\u00020\u001a2\u0011\u0010\u001f\u001a\r\u0012\u0004\u0012\u00020\u001a0 \u00a2\u0006\u0002\u0008!\u00a2\u0006\u0002\u0010\"R!\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00018\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ExpoComposeView;",
        "T",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "layout",
        "Landroidx/compose/ui/platform/ComposeView;",
        "getLayout$annotations",
        "()V",
        "getLayout",
        "()Landroidx/compose/ui/platform/ComposeView;",
        "layout$delegate",
        "Lkotlin/Lazy;",
        "props",
        "getProps",
        "()Lexpo/modules/kotlin/views/ComposeProps;",
        "Lexpo/modules/kotlin/views/ComposeProps;",
        "shouldUseAndroidLayout",
        "",
        "getShouldUseAndroidLayout",
        "()Z",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "setContent",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function2;)V",
        "expo-modules-core_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final layout$delegate:Lkotlin/Lazy;

.field private final props:Lexpo/modules/kotlin/views/ComposeProps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final shouldUseAndroidLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V

    const/4 p2, 0x1

    .line 19
    iput-boolean p2, p0, Lexpo/modules/kotlin/views/ExpoComposeView;->shouldUseAndroidLayout:Z

    .line 31
    new-instance p2, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;

    invoke-direct {p2, p1, p0}, Lexpo/modules/kotlin/views/ExpoComposeView$layout$2;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/views/ExpoComposeView;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/views/ExpoComposeView;->layout$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic getLayout$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getLayout()Landroidx/compose/ui/platform/ComposeView;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/views/ExpoComposeView;->layout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    return-object v0
.end method

.method public getProps()Lexpo/modules/kotlin/views/ComposeProps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lexpo/modules/kotlin/views/ExpoComposeView;->props:Lexpo/modules/kotlin/views/ComposeProps;

    return-object v0
.end method

.method public getShouldUseAndroidLayout()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lexpo/modules/kotlin/views/ExpoComposeView;->shouldUseAndroidLayout:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ExpoComposeView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoComposeView;->setMeasuredDimension(II)V

    return-void

    .line 27
    :cond_0
    invoke-super {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;->onMeasure(II)V

    return-void
.end method

.method public final setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ExpoComposeView;->getLayout()Landroidx/compose/ui/platform/ComposeView;

    move-result-object v0

    new-instance v1, Lexpo/modules/kotlin/views/ExpoComposeView$setContent$1;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/views/ExpoComposeView$setContent$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const p1, 0x2c104225

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
