.class public final Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;
.super Ljava/lang/Object;
.source "ReactModalHostView.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/modal/ReactModalHostView;->showOrUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "onKey",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/modal/ReactModalHostView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/modal/ReactModalHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p2, v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p1}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 261
    :cond_0
    iget-object p2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {p2}, Lcom/facebook/react/views/modal/ReactModalHostView;->getOnRequestCloseListener()Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 264
    invoke-interface {p2, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;->onRequestClose(Landroid/content/DialogInterface;)V

    return v1

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onRequestClose callback must be set if back key is expected to close the modal"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
