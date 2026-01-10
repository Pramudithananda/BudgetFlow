.class public final Lexpo/modules/kotlin/types/ReturnType;
.super Ljava/lang/Object;
.source "ReturnType.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReturnType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ReturnType\n*L\n1#1,215:1\n211#1,2:216\n211#1,2:218\n211#1,2:220\n211#1,2:222\n211#1,2:224\n211#1,2:226\n*S KotlinDebug\n*F\n+ 1 ReturnType.kt\nexpo/modules/kotlin/types/ReturnType\n*L\n196#1:216,2\n197#1:218,2\n198#1:220,2\n199#1:222,2\n200#1:224,2\n201#1:226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\t\u001a\u00020\n\"\u0006\u0008\u0000\u0010\u000b\u0018\u0001H\u0080\u0008\u00a2\u0006\u0002\u0008\u000cR\u0012\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ReturnType;",
        "",
        "klass",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "converter",
        "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;",
        "convertToJS",
        "value",
        "inheritFrom",
        "",
        "T",
        "inheritFrom$expo_modules_core_release",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final converter:Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter<",
            "*>;"
        }
    .end annotation
.end field

.field private final klass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    .line 175
    move-object p1, p0

    check-cast p1, Lexpo/modules/kotlin/types/ReturnType;

    .line 176
    iget-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    .line 177
    const-class v0, Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 178
    :cond_0
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BundleConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BundleConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 179
    :cond_1
    const-class v0, [I

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$IntArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$IntArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 180
    :cond_2
    const-class v0, [F

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FloatArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FloatArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 181
    :cond_3
    const-class v0, [D

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DoubleArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DoubleArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 182
    :cond_4
    const-class v0, [Z

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BooleanArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$BooleanArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 183
    :cond_5
    const-class v0, [B

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ByteArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ByteArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 184
    :cond_6
    const-class v0, Ljava/net/URI;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URIConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URIConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 185
    :cond_7
    const-class v0, Ljava/net/URL;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URLConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$URLConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_0

    .line 186
    :cond_8
    const-class v0, Landroid/net/Uri;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AndroidUriConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AndroidUriConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 187
    :cond_9
    const-class v0, Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FileConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$FileConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 188
    :cond_a
    const-class v0, Lkotlin/Pair;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PairConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PairConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 189
    :cond_b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$LongConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$LongConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 190
    :cond_c
    const-class v0, Lkotlin/time/Duration;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DurationConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$DurationConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    .line 191
    :cond_d
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AnyConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$AnyConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_0

    :cond_e
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_15

    .line 216
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/util/Map;

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 196
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$MapConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$MapConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto/16 :goto_1

    .line 218
    :cond_f
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Enum;

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 197
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$EnumConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$EnumConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 220
    :cond_10
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lexpo/modules/kotlin/records/Record;

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 198
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RecordConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RecordConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 222
    :cond_11
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 199
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RawTypedArrayHolderConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$RawTypedArrayHolderConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 224
    :cond_12
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 200
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ArrayConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$ArrayConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 226
    :cond_13
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/util/Collection;

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 201
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$CollectionConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    goto :goto_1

    .line 202
    :cond_14
    new-instance p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;

    invoke-direct {p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter$PassThroughConverter;-><init>()V

    check-cast p1, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    .line 175
    :cond_15
    :goto_1
    iput-object p1, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    return-void
.end method

.method public static final synthetic access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;
    .locals 0

    .line 172
    iget-object p0, p0, Lexpo/modules/kotlin/types/ReturnType;->klass:Lkotlin/reflect/KClass;

    return-object p0
.end method


# virtual methods
.method public final convertToJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 207
    iget-object v0, p0, Lexpo/modules/kotlin/types/ReturnType;->converter:Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;

    invoke-interface {v0, p1}, Lexpo/modules/kotlin/types/ExperimentalJSTypeConverter;->convertToJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic inheritFrom$expo_modules_core_release()Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .line 211
    invoke-static {p0}, Lexpo/modules/kotlin/types/ReturnType;->access$getKlass$p(Lexpo/modules/kotlin/types/ReturnType;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
