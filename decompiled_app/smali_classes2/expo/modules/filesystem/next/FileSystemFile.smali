.class public final Lexpo/modules/filesystem/next/FileSystemFile;
.super Lexpo/modules/filesystem/next/FileSystemPath;
.source "FileSystemFile.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemFile.kt\nexpo/modules/filesystem/next/FileSystemFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\nJ\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\nJ\u0006\u0010\u001c\u001a\u00020\u001aJ\u0008\u0010\u001d\u001a\u00020\u001aH\u0016J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\nR\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u00020\n8F\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/filesystem/next/FileSystemFile;",
        "Lexpo/modules/filesystem/next/FileSystemPath;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "exists",
        "",
        "getExists",
        "()Z",
        "md5",
        "",
        "getMd5$annotations",
        "()V",
        "getMd5",
        "()Ljava/lang/String;",
        "size",
        "",
        "getSize",
        "()Ljava/lang/Long;",
        "type",
        "getType",
        "asString",
        "base64",
        "bytes",
        "",
        "create",
        "",
        "text",
        "validatePath",
        "validateType",
        "write",
        "content",
        "Lexpo/modules/kotlin/typedarray/TypedArray;",
        "expo-file-system_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/next/FileSystemPath;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic getMd5$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 5

    .line 62
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 63
    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final base64()Ljava/lang/String;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 74
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 75
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encodeToString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bytes()[B
    .locals 1

    .line 79
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 80
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 81
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public final create()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 35
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 36
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-void
.end method

.method public final getExists()Z
    .locals 1

    .line 29
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 30
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 3

    .line 86
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 87
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlin/text/HexExtensionsKt;->toHexString$default([BLkotlin/text/HexFormat;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 2

    .line 93
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 3

    .line 101
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final text()Ljava/lang/String;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 68
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 69
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validatePath()V
    .locals 0

    return-void
.end method

.method public validateType()V
    .locals 1

    .line 22
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 23
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lexpo/modules/filesystem/next/InvalidTypeFileException;

    invoke-direct {v0}, Lexpo/modules/filesystem/next/InvalidTypeFileException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final write(Lexpo/modules/kotlin/typedarray/TypedArray;)V
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 52
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 53
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->create()V

    .line 56
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/FileOutputStream;

    .line 57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/TypedArray;->toDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 56
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final write(Ljava/lang/String;)V
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->validateType()V

    .line 41
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/next/FileSystemFile;->validatePermission(Lexpo/modules/interfaces/filesystem/Permission;)Z

    .line 42
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->create()V

    .line 45
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lexpo/modules/filesystem/next/FileSystemFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/FileOutputStream;

    .line 46
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "getBytes(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 47
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 45
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
