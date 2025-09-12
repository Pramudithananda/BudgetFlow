.class public abstract Lexpo/modules/kotlin/functions/AsyncFunction;
.super Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
.source "AsyncFunction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/functions/AsyncFunction$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunction.kt\nexpo/modules/kotlin/functions/AsyncFunction\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyType\n*L\n1#1,87:1\n11065#2:88\n11400#2,3:89\n12474#2:94\n12475#2:99\n37#3,2:92\n302#4,4:95\n*S KotlinDebug\n*F\n+ 1 AsyncFunction.kt\nexpo/modules/kotlin/functions/AsyncFunction\n*L\n30#1:88\n30#1:89,3\n69#1:94\n69#1:99\n30#1:92,2\n69#1:95,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J/\u0010\u000f\u001a\u00020\t2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000bH \u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001e\u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0018H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/kotlin/functions/AsyncFunction;",
        "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
        "name",
        "",
        "desiredArgsTypes",
        "",
        "Lexpo/modules/kotlin/types/AnyType;",
        "(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V",
        "attachToJSObject",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "jsObject",
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
        "moduleName",
        "callUserImplementation",
        "args",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "callUserImplementation$expo_modules_core_release",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/AppContext;)V",
        "dispatchOnQueue",
        "block",
        "Lkotlin/Function0;",
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
.field public static final $stable:I


# direct methods
.method public static synthetic $r8$lambda$hBPA6_pvQqaYNLV28mkVqrdL8DU(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunction;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/PromiseImpl;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/kotlin/functions/AsyncFunction;->attachToJSObject$lambda$1(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunction;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/PromiseImpl;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desiredArgsTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V

    return-void
.end method

.method private static final attachToJSObject$lambda$1(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunction;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/PromiseImpl;)V
    .locals 6

    const-string v0, "$appContextHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$moduleName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "this$0"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$appContext"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "promiseImpl"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p0, Lexpo/modules/kotlin/functions/AsyncFunction$attachToJSObject$2$functionBody$1;

    move-object v0, p0

    move-object v1, p5

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lexpo/modules/kotlin/functions/AsyncFunction$attachToJSObject$2$functionBody$1;-><init>(Lexpo/modules/kotlin/jni/PromiseImpl;Lexpo/modules/kotlin/functions/AsyncFunction;Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 56
    invoke-direct {p2, p3, p0}, Lexpo/modules/kotlin/functions/AsyncFunction;->dispatchOnQueue(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final dispatchOnQueue(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 61
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunction;->getQueue()Lexpo/modules/kotlin/functions/Queues;

    move-result-object v1

    sget-object v2, Lexpo/modules/kotlin/functions/AsyncFunction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lexpo/modules/kotlin/functions/Queues;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v1, Lexpo/modules/kotlin/functions/AsyncFunction$dispatchOnQueue$3;

    invoke-direct {v1, v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunction$dispatchOnQueue$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/AppContext;->getModulesQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    new-instance v1, Lexpo/modules/kotlin/functions/AsyncFunction$dispatchOnQueue$1;

    invoke-direct {v1, v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunction$dispatchOnQueue$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method


# virtual methods
.method public attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V
    .locals 10

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lexpo/modules/kotlin/functions/AsyncFunction;->getName()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p0}, Lexpo/modules/kotlin/functions/AsyncFunction;->getTakesOwner$expo_modules_core_release()Z

    move-result v3

    .line 29
    invoke-virtual {p0}, Lexpo/modules/kotlin/functions/AsyncFunction;->isEnumerable$expo_modules_core_release()Z

    move-result v4

    .line 30
    invoke-virtual {p0}, Lexpo/modules/kotlin/functions/AsyncFunction;->getDesiredArgsTypes()[Lexpo/modules/kotlin/types/AnyType;

    move-result-object v1

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 89
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v1, v8

    .line 30
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyType;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v9

    .line 90
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 88
    check-cast v5, Ljava/util/Collection;

    .line 93
    new-array v1, v7, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v5, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 26
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunction$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, p3, p0, p1}, Lexpo/modules/kotlin/functions/AsyncFunction$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunction;Lexpo/modules/kotlin/AppContext;)V

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerAsyncFunction(Ljava/lang/String;ZZ[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIAsyncFunctionBody;)V

    return-void
.end method

.method public abstract callUserImplementation$expo_modules_core_release([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/AppContext;)V
.end method
