.class Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lexpo/modules/adapters/react/services/UIBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->addUIBlock(Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

.field final synthetic val$block:Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;


# direct methods
.method constructor <init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;->this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

    iput-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;->val$block:Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 1

    .line 123
    iget-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;->val$block:Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;

    new-instance v0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2$1;-><init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    invoke-interface {p2, v0}, Lexpo/modules/core/interfaces/services/UIManager$GroupUIBlock;->execute(Lexpo/modules/core/interfaces/services/UIManager$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0, p1}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    return-void
.end method

.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$2;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    return-void
.end method
