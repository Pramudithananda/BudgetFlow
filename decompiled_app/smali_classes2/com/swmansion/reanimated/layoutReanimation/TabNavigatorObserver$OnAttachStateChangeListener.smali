.class Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;
.super Ljava/lang/Object;
.source "TabNavigatorObserver.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnAttachStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;->this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;->this$0:Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;

    invoke-static {v0}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->-$$Nest$fgetmReaLayoutAnimator(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;)Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->visitNativeTreeAndMakeSnapshot(Landroid/view/View;)V

    return-void
.end method
