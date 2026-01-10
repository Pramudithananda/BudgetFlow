.class final Lexpo/modules/kotlin/ModuleHolder$jsObject$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,168:1\n14#2:169\n25#2:170\n14#2:175\n25#2:176\n14#2:183\n25#2:184\n27#3,3:171\n27#3,3:177\n31#3:182\n27#3,3:185\n31#3:192\n31#3:193\n26#4:174\n1855#5,2:180\n1855#5:188\n1856#5:191\n37#6,2:189\n*S KotlinDebug\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2\n*L\n40#1:169\n40#1:170\n53#1:175\n53#1:176\n63#1:183\n63#1:184\n40#1:171,3\n53#1:177,3\n53#1:182\n63#1:185,3\n63#1:192\n40#1:193\n49#1:174\n55#1:180,2\n64#1:188\n64#1:191\n78#1:189,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "T",
        "Lexpo/modules/kotlin/modules/Module;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/ModuleHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 16

    move-object/from16 v1, p0

    .line 38
    iget-object v0, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lexpo/modules/kotlin/ModuleHolder;->access$setWasInitialized$p(Lexpo/modules/kotlin/ModuleHolder;Z)V

    .line 40
    iget-object v0, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jsObject"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ExpoModulesCore] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .line 42
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v4

    .line 45
    new-instance v13, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v13, v4}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 46
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v5

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v0, v5, v13, v6}, Lexpo/modules/kotlin/ModuleHolder;->access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 49
    const-string v6, "__expo_module_name__"

    const/4 v14, 0x0

    .line 174
    new-array v8, v14, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 49
    new-instance v5, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$1;

    invoke-direct {v5, v3}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$1;-><init>(Lexpo/modules/kotlin/ModuleHolder;)V

    move-object v9, v5

    check-cast v9, Lexpo/modules/kotlin/jni/JNIFunctionBody;

    .line 174
    new-array v11, v14, [Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    .line 49
    invoke-virtual/range {v5 .. v12}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerProperty(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    .line 51
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinition()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getAsyncFunctions()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 52
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    if-ne v6, v2, :cond_3

    .line 176
    const-string v2, "[ExpoModulesCore] Attaching view prototype"

    .line 177
    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 54
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v2, v4}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 55
    check-cast v5, Ljava/lang/Iterable;

    .line 180
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 56
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinition()Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getViewType$expo_modules_core_release()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v2, v7}, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_2
    const-string v5, "ViewPrototype"

    invoke-virtual {v13, v5, v2}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 60
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0

    .line 63
    :cond_3
    :goto_3
    const-string v2, "Attaching classes"

    .line 183
    const-string v5, "ExpoModulesCore"

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    :try_start_3
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getClassData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 188
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;

    .line 65
    new-instance v7, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v7, v4}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 67
    invoke-virtual {v5}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v6

    invoke-virtual {v5}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v0, v6, v7, v8}, Lexpo/modules/kotlin/ModuleHolder;->access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getConstructor()Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    move-result-object v6

    .line 70
    invoke-virtual {v6}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getOwnerType()Lkotlin/reflect/KType;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v8

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_5
    instance-of v9, v8, Lkotlin/reflect/KClass;

    if-eqz v9, :cond_5

    check-cast v8, Lkotlin/reflect/KClass;

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_6

    invoke-static {v8}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v8

    move-object v9, v8

    goto :goto_7

    :cond_6
    const/4 v9, 0x0

    .line 73
    :goto_7
    invoke-virtual {v5}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v6}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getTakesOwner$expo_modules_core_release()Z

    move-result v10

    .line 77
    invoke-virtual {v5}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef()Z

    move-result v11

    .line 78
    invoke-virtual {v6}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getCppRequiredTypes$expo_modules_core_release()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    .line 190
    new-array v15, v14, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v12, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 79
    invoke-virtual {v5}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v0}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getJNIFunctionBody$expo_modules_core_release(Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/jni/JNIFunctionBody;

    move-result-object v15

    move-object v5, v13

    move-object v6, v8

    move v8, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v15

    .line 72
    invoke-virtual/range {v5 .. v12}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerClass(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;ZLjava/lang/Class;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    goto :goto_4

    .line 82
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    :try_start_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 84
    new-instance v0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v13}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_1
    move-exception v0

    .line 192
    :try_start_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 193
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->invoke()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object v0

    return-object v0
.end method
