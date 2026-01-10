.class Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lexpo/modules/adapters/react/services/UIBlockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->addUIBlock(ILexpo/modules/core/interfaces/services/UIManager$UIBlock;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

.field final synthetic val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

.field final synthetic val$tClass:Ljava/lang/Class;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;ILexpo/modules/core/interfaces/services/UIManager$UIBlock;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

    iput p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tag:I

    iput-object p3, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    iput-object p4, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 3

    const-string p2, "Expected view to be of "

    .line 87
    iget v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected view for this tag not to be null."

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$tClass:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "; found "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {v0, v1}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->reject(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    iget-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->val$block:Lexpo/modules/core/interfaces/services/UIManager$UIBlock;

    invoke-interface {p2, p1}, Lexpo/modules/core/interfaces/services/UIManager$UIBlock;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, p1}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    return-void
.end method

.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$1;->executeImpl(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    return-void
.end method
