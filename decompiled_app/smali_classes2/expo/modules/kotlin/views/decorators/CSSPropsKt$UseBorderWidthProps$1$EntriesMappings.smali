.class public final synthetic Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1$EntriesMappings;
.super Ljava/lang/Object;
.source "CSSProps.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "EntriesMappings"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCSSProps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CSSProps.kt\nexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1$EntriesMappings\n*L\n1#1,176:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic entries$0:Lkotlin/enums/EnumEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/enums/EnumEntries<",
            "Lcom/facebook/react/uimanager/style/LogicalEdge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/kotlin/views/decorators/CSSPropsKt$UseBorderWidthProps$1$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    return-void
.end method
