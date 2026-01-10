.class public final Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;
.super Ljava/lang/Object;
.source "TaskServiceProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskServiceProviderHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskServiceProviderHelper.kt\nexpo/modules/interfaces/taskManager/TaskServiceProviderHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n800#2,11:43\n1054#2:54\n800#2,11:55\n*S KotlinDebug\n*F\n+ 1 TaskServiceProviderHelper.kt\nexpo/modules/interfaces/taskManager/TaskServiceProviderHelper\n*L\n32#1:43,11\n33#1:54\n37#1:55,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;",
        "",
        "()V",
        "getTaskServiceImpl",
        "Lexpo/modules/interfaces/taskManager/TaskServiceInterface;",
        "context",
        "Landroid/content/Context;",
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

.field public static final INSTANCE:Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;

    invoke-direct {v0}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;-><init>()V

    sput-object v0, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;->INSTANCE:Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    :try_start_0
    const-string v1, "expo.modules.ExpoModulesPackageList"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 28
    const-string v3, "getPackageList"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 31
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    return-object v0

    .line 32
    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 52
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lexpo/modules/core/interfaces/Package;

    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 53
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 43
    check-cast v2, Ljava/lang/Iterable;

    .line 54
    new-instance v1, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper$getTaskServiceImpl$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderHelper$getTaskServiceImpl$$inlined$sortedByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Iterable;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 64
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;

    if-eqz v4, :cond_6

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 65
    :cond_7
    check-cast v2, Ljava/util/List;

    .line 38
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;

    if-eqz v1, :cond_8

    .line 39
    invoke-interface {v1, p1}, Lexpo/modules/interfaces/taskManager/TaskServiceProviderInterface;->getTaskServiceImpl(Landroid/content/Context;)Lexpo/modules/interfaces/taskManager/TaskServiceInterface;

    move-result-object v0

    :catch_0
    :cond_8
    return-object v0
.end method
