.class final Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule$ReactTouchExplorationStateChangeListener;
.super Ljava/lang/Object;
.source "AccessibilityInfoModule.kt"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReactTouchExplorationStateChangeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0083\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule$ReactTouchExplorationStateChangeListener;",
        "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
        "(Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;)V",
        "onTouchExplorationStateChanged",
        "",
        "enabled",
        "",
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
.field final synthetic this$0:Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule$ReactTouchExplorationStateChangeListener;->this$0:Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule$ReactTouchExplorationStateChangeListener;->this$0:Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;

    invoke-static {v0, p1}, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;->access$updateAndSendTouchExplorationChangeEvent(Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;Z)V

    return-void
.end method
