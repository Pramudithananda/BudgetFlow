.class public interface abstract Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;
.super Ljava/lang/Object;
.source "NativeViewGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeViewGestureHandlerHook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J!\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u0007H\u0016J\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0007H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "",
        "afterGestureEnd",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "canActivate",
        "",
        "view",
        "Landroid/view/View;",
        "canBegin",
        "handleEventBeforeActivation",
        "sendTouchEvent",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;",
        "shouldCancelRootViewGestureHandlerIfNecessary",
        "shouldRecognizeSimultaneously",
        "handler",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "(Lcom/swmansion/gesturehandler/core/GestureHandler;)Ljava/lang/Boolean;",
        "wantsToHandleEventBeforeActivation",
        "react-native-gesture-handler_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract afterGestureEnd(Landroid/view/MotionEvent;)V
.end method

.method public abstract canActivate(Landroid/view/View;)Z
.end method

.method public abstract canBegin(Landroid/view/MotionEvent;)Z
.end method

.method public abstract handleEventBeforeActivation(Landroid/view/MotionEvent;)V
.end method

.method public abstract sendTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
.end method

.method public abstract shouldCancelRootViewGestureHandlerIfNecessary()Z
.end method

.method public abstract shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract wantsToHandleEventBeforeActivation()Z
.end method
