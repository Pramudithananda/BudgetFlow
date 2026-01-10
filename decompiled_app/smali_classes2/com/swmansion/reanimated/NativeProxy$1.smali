.class Lcom/swmansion/reanimated/NativeProxy$1;
.super Ljava/lang/Object;
.source "NativeProxy.java"

# interfaces
.implements Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/NativeProxy;->createNativeMethodsHolder(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnimation(I)V
    .locals 0

    return-void
.end method

.method public checkDuplicateSharedTag(II)V
    .locals 0

    return-void
.end method

.method public clearAnimationConfig(I)V
    .locals 0

    return-void
.end method

.method public findPrecedingViewTagForTransition(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getSharedGroup(I)[I
    .locals 0

    const/4 p1, 0x0

    .line 141
    new-array p1, p1, [I

    return-object p1
.end method

.method public hasAnimation(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLayoutAnimationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAnimateExiting(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startAnimation(IILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
