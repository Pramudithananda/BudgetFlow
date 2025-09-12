.class public Lcom/facebook/react/bridge/ReadableNativeMap;
.super Lcom/facebook/react/bridge/NativeMap;
.source "ReadableNativeMap.kt"

# interfaces
.implements Lcom/facebook/react/bridge/ReadableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/ReadableNativeMap$Companion;,
        Lcom/facebook/react/bridge/ReadableNativeMap$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadableNativeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadableNativeMap.kt\ncom/facebook/react/bridge/ReadableNativeMap\n*L\n1#1,191:1\n66#1,3:192\n66#1,3:195\n78#1:198\n66#1,3:199\n78#1:202\n66#1,3:203\n78#1:206\n66#1,3:207\n78#1:210\n66#1,3:211\n83#1,5:214\n66#1,3:219\n83#1,5:222\n66#1,3:227\n83#1,5:230\n66#1,3:235\n*S KotlinDebug\n*F\n+ 1 ReadableNativeMap.kt\ncom/facebook/react/bridge/ReadableNativeMap\n*L\n78#1:192,3\n87#1:195,3\n91#1:198\n91#1:199,3\n93#1:202\n93#1:203,3\n96#1:206\n96#1:207,3\n98#1:210\n98#1:211,3\n100#1:214,5\n100#1:219,3\n103#1:222,5\n103#1:227,3\n106#1:230,5\n106#1:235,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u0000 B2\u00020\u00012\u00020\u0002:\u0001BB\u0011\u0008\u0004\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J6\u0010\u001d\u001a\u0002H\u001e\"\u0006\u0008\u0000\u0010\u001e\u0018\u00012\u0006\u0010\u001f\u001a\u00020\t2\u0008\u0010 \u001a\u0004\u0018\u00010\n2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\"H\u0083\u0008\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0012\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u0010)\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u00100\u001a\u0002012\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0012\u00102\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0012\u00103\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001f\u001a\u00020\tH\u0002J.\u00103\u001a\u0004\u0018\u0001H\u001e\"\u0006\u0008\u0000\u0010\u001e\u0018\u00012\u0006\u0010\u001f\u001a\u00020\t2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\"H\u0082\u0008\u00a2\u0006\u0002\u00104J\u0012\u00105\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u00106\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0010\u00107\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\tH\u0002J,\u00107\u001a\u0002H\u001e\"\u0006\u0008\u0000\u0010\u001e\u0018\u00012\u0006\u0010\u001f\u001a\u00020\t2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\"H\u0082\u0008\u00a2\u0006\u0002\u00104J\u0010\u00108\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0008\u00109\u001a\u00020/H\u0016J\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000eH\u0082 \u00a2\u0006\u0002\u0010\u0010J\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0082 \u00a2\u0006\u0002\u0010<J\u0014\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0082 \u00a2\u0006\u0002\u0010<J\u0010\u0010>\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0008\u0010?\u001a\u00020@H\u0016J$\u0010A\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u0015H\u0016R&\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00080\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR!\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R7\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0017R7\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0014j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a`\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u001b\u0010\u0017\u00a8\u0006C"
    }
    d2 = {
        "Lcom/facebook/react/bridge/ReadableNativeMap;",
        "Lcom/facebook/react/bridge/NativeMap;",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "hybridData",
        "Lcom/facebook/jni/HybridData;",
        "(Lcom/facebook/jni/HybridData;)V",
        "entryIterator",
        "",
        "",
        "",
        "",
        "getEntryIterator",
        "()Ljava/util/Iterator;",
        "keys",
        "",
        "getKeys",
        "()[Ljava/lang/String;",
        "keys$delegate",
        "Lkotlin/Lazy;",
        "localMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getLocalMap",
        "()Ljava/util/HashMap;",
        "localMap$delegate",
        "localTypeMap",
        "Lcom/facebook/react/bridge/ReadableType;",
        "getLocalTypeMap",
        "localTypeMap$delegate",
        "checkInstance",
        "T",
        "name",
        "instance",
        "type",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "getArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "getBoolean",
        "getDouble",
        "",
        "getDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "getInt",
        "",
        "getLong",
        "",
        "getMap",
        "getNullableValue",
        "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;",
        "getString",
        "getType",
        "getValue",
        "hasKey",
        "hashCode",
        "importKeys",
        "importTypes",
        "()[Ljava/lang/Object;",
        "importValues",
        "isNull",
        "keySetIterator",
        "Lcom/facebook/react/bridge/ReadableMapKeySetIterator;",
        "toHashMap",
        "Companion",
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


# static fields
.field private static final Companion:Lcom/facebook/react/bridge/ReadableNativeMap$Companion;

.field private static jniPassCounter:I


# instance fields
.field private final keys$delegate:Lkotlin/Lazy;

.field private final localMap$delegate:Lkotlin/Lazy;

.field private final localTypeMap$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/bridge/ReadableNativeMap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/ReadableNativeMap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/bridge/ReadableNativeMap;->Companion:Lcom/facebook/react/bridge/ReadableNativeMap$Companion;

    .line 183
    invoke-static {}, Lcom/facebook/react/bridge/ReactBridge;->staticInit()V

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/NativeMap;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 23
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/facebook/react/bridge/ReadableNativeMap$keys$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/ReadableNativeMap$keys$2;-><init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/bridge/ReadableNativeMap;->keys$delegate:Lkotlin/Lazy;

    .line 26
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/ReadableNativeMap$localMap$2;-><init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/bridge/ReadableNativeMap;->localMap$delegate:Lkotlin/Lazy;

    .line 38
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/facebook/react/bridge/ReadableNativeMap$localTypeMap$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/ReadableNativeMap$localTypeMap$2;-><init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/bridge/ReadableNativeMap;->localTypeMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lcom/facebook/react/bridge/ReadableNativeMap$Companion;
    .locals 1

    .line 19
    sget-object v0, Lcom/facebook/react/bridge/ReadableNativeMap;->Companion:Lcom/facebook/react/bridge/ReadableNativeMap$Companion;

    return-object v0
.end method

.method public static final synthetic access$getJniPassCounter$cp()I
    .locals 1

    .line 19
    sget v0, Lcom/facebook/react/bridge/ReadableNativeMap;->jniPassCounter:I

    return v0
.end method

.method public static final synthetic access$getKeys(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getKeys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$importKeys(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->importKeys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$importTypes(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->importTypes()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$importValues(Lcom/facebook/react/bridge/ReadableNativeMap;)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->importValues()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setJniPassCounter$cp(I)V
    .locals 0

    .line 19
    sput p0, Lcom/facebook/react/bridge/ReadableNativeMap;->jniPassCounter:I

    return-void
.end method

.method private final synthetic checkInstance(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 66
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 67
    new-instance v0, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const-string p2, "NULL"

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be cast from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p2
.end method

.method public static final getJNIPassCounter()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/react/bridge/ReadableNativeMap;->Companion:Lcom/facebook/react/bridge/ReadableNativeMap$Companion;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReadableNativeMap$Companion;->getJNIPassCounter()I

    move-result v0

    return v0
.end method

.method private final getKeys()[Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/facebook/react/bridge/ReadableNativeMap;->keys$delegate:Lkotlin/Lazy;

    .line 23
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final getLocalMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/facebook/react/bridge/ReadableNativeMap;->localMap$delegate:Lkotlin/Lazy;

    .line 26
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final getLocalTypeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableType;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/facebook/react/bridge/ReadableNativeMap;->localTypeMap$delegate:Lkotlin/Lazy;

    .line 38
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final getNullableValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final synthetic getNullableValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getNullableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    .line 195
    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 196
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "NULL"

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Value for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be cast from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-object v0
.end method

.method private final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "assertNotNull(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/NoSuchKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final synthetic getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    .line 192
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 193
    new-instance v1, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "NULL"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " cannot be cast from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-direct {v1, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method private final native importKeys()[Ljava/lang/String;
.end method

.method private final native importTypes()[Ljava/lang/Object;
.end method

.method private final native importValues()[Ljava/lang/Object;
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 158
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableNativeMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    check-cast p1, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-direct {p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-class v0, Lcom/facebook/react/bridge/ReadableArray;

    .line 222
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getNullableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 227
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/bridge/ReadableArray;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/facebook/react/bridge/ReadableArray;

    if-nez v2, :cond_4

    .line 228
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "NULL"

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Value for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be cast from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to ReadableArray"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 198
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    instance-of v2, v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 200
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "NULL"

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Value for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be cast from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 202
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    instance-of v2, v1, Ljava/lang/Double;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Double;

    if-nez v2, :cond_3

    .line 204
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "NULL"

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Value for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be cast from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, p1}, Lcom/facebook/react/bridge/DynamicFromMap;->create(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Lcom/facebook/react/bridge/DynamicFromMap;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/Dynamic;

    return-object p1
.end method

.method public getEntryIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getKeys()[Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->importValues()[Ljava/lang/Object;

    move-result-object v1

    .line 118
    sget v2, Lcom/facebook/react/bridge/ReadableNativeMap;->jniPassCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/facebook/react/bridge/ReadableNativeMap;->jniPassCounter:I

    .line 119
    new-instance v2, Lcom/facebook/react/bridge/ReadableNativeMap$entryIterator$1$1;

    invoke-direct {v2, v0, v1}, Lcom/facebook/react/bridge/ReadableNativeMap$entryIterator$1$1;-><init>([Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    instance-of v2, v1, Ljava/lang/Double;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Double;

    if-nez v2, :cond_3

    .line 208
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "NULL"

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Value for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be cast from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 210
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    instance-of v2, v1, Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 212
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "NULL"

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Value for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be cast from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    return-object p1
.end method

.method public getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getNullableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/bridge/ReadableNativeMap;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/facebook/react/bridge/ReadableNativeMap;

    if-nez v2, :cond_4

    .line 236
    new-instance v2, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "NULL"

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Value for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be cast from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to ReadableNativeMap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-direct {v2, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-class v0, Ljava/lang/String;

    .line 214
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getNullableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    .line 219
    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    .line 220
    new-instance v3, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string v2, "NULL"

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Value for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be cast from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-direct {v3, p1}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v2, v3

    :goto_2
    return-object v2
.end method

.method public getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalTypeMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/NoSuchKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 61
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/NoSuchKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getKeys()[Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/facebook/react/bridge/ReadableNativeMap$keySetIterator$1;

    invoke-direct {v1, v0}, Lcom/facebook/react/bridge/ReadableNativeMap$keySetIterator$1;-><init>([Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    return-object v1
.end method

.method public toHashMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getLocalMap()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 166
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v2}, Lcom/facebook/react/bridge/ReadableNativeMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableNativeMap$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_1
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/facebook/react/bridge/ReadableNativeMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :pswitch_2
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/facebook/react/bridge/ReadableNativeMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReadableNativeMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
