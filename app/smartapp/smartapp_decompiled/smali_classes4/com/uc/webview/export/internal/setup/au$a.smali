.class final Lcom/uc/webview/export/internal/setup/au$a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static A:J = 0x0L

.field private static B:J = 0x0L

.field private static C:J = 0x0L

.field private static D:J = 0x0L

.field private static E:J = 0x0L

.field private static F:J = 0x0L

.field private static G:J = 0x0L

.field private static H:J = 0x0L

.field private static I:J = 0x0L

.field private static J:J = 0x0L

.field private static a:J = 0x1L

.field private static b:J = 0x2L

.field private static c:J = 0x4L

.field private static d:J = 0x8L

.field private static e:J = 0x10L

.field private static f:J = 0x20L

.field private static g:J = 0x40L

.field private static h:J = 0x80L

.field private static i:J = 0x100L

.field private static j:J = 0x200L

.field private static k:J = 0x400L

.field private static l:J = 0x800L

.field private static m:J = 0x1000L

.field private static n:J = 0x2000L

.field private static o:J = 0x4000L

.field private static p:J = 0x8000L

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:J

.field private static u:J

.field private static v:J

.field private static w:J

.field private static x:J

.field private static y:J

.field private static z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 210
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->a:J

    const/4 v2, 0x1

    shl-long v3, v0, v2

    .line 211
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->q:J

    shl-long/2addr v3, v2

    .line 212
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->r:J

    shl-long/2addr v3, v2

    .line 213
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->s:J

    shl-long/2addr v3, v2

    .line 214
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->t:J

    shl-long/2addr v3, v2

    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->u:J

    shl-long v3, v0, v2

    .line 256
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->v:J

    shl-long/2addr v3, v2

    .line 257
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->w:J

    shl-long/2addr v3, v2

    .line 258
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->x:J

    shl-long/2addr v3, v2

    .line 259
    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->y:J

    shl-long/2addr v3, v2

    sput-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->z:J

    shl-long/2addr v0, v2

    .line 298
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->A:J

    shl-long/2addr v0, v2

    .line 299
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    shl-long/2addr v0, v2

    .line 300
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->C:J

    shl-long/2addr v0, v2

    .line 301
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->D:J

    shl-long/2addr v0, v2

    .line 302
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->E:J

    shl-long/2addr v0, v2

    .line 303
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->F:J

    shl-long/2addr v0, v2

    .line 304
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    shl-long/2addr v0, v2

    .line 305
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->H:J

    shl-long/2addr v0, v2

    .line 306
    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->I:J

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->J:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/au$a;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(I)J
    .locals 4

    .line 217
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->q:J

    .line 221
    :try_start_0
    sget v2, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Update:I

    if-eq v2, p0, :cond_2

    .line 225
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 226
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->r:J

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 232
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->s:J

    goto :goto_0

    .line 237
    :cond_1
    iget-boolean p0, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz p0, :cond_2

    .line 238
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->u:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".checkPrecondition"

    invoke-static {v2, v3, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)J
    .locals 8

    .line 263
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".deleteHistoryCoreFiles hostSubFolder:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->v:J

    .line 266
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 267
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_2

    .line 272
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 275
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->detectZipByFileType(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 276
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/f;->a(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0, v4, v6}, Lcom/uc/webview/export/internal/utility/f;->a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/f$a;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 278
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->x:J

    .line 279
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".deleteHistoryCoreFiles verifySignature failure! file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_1
    invoke-static {p0, v4, v6}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/f$a;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 283
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 284
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->y:J

    .line 285
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".deleteHistoryCoreFiles verifyCoreCompressFileVersion failure! file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0

    .line 268
    :cond_4
    :goto_2
    sget-wide p0, Lcom/uc/webview/export/internal/setup/au$a;->z:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 290
    :try_start_1
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->w:J

    .line 291
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".deleteHistoryCoreFiles"

    invoke-static {p1, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-wide v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "."

    const-string v3, ".copyCoreFileToSdcard"

    const-string v4, "csc_vvfsv"

    .line 310
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".copyCoreFileToSdcard("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->A:J

    .line 312
    new-instance v7, Lcom/uc/webview/export/internal/utility/f$a;

    invoke-direct {v7}, Lcom/uc/webview/export/internal/utility/f$a;-><init>()V

    .line 315
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ".copyCoreFileToSdcard copy file path : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 317
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->D:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1049
    iget-wide v2, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    .line 415
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 320
    :cond_0
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_9

    .line 328
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->detectZipByFileType(Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 329
    invoke-static/range {p0 .. p0}, Lcom/uc/webview/export/internal/utility/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v8, v9}, Lcom/uc/webview/export/internal/utility/f;->a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/f$a;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->I:J

    .line 331
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".copyCoreFileToSdcard verifySignature failure! file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3049
    iget-wide v0, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    .line 415
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v5

    .line 335
    :cond_2
    :try_start_2
    invoke-static {v0, v8, v7}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/f$a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->J:J

    .line 337
    sget-wide v0, Lcom/uc/webview/export/internal/utility/f$a;->n:J

    invoke-virtual {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/f$a;->a(J)V

    .line 338
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".copyCoreFileToSdcard verifyCoreCompressFileVersion failure! file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4049
    iget-wide v0, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    goto :goto_1

    .line 341
    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 342
    array-length v11, v0

    if-lez v11, :cond_8

    .line 344
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 345
    array-length v13, v0

    move-object v14, v9

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_8

    aget-object v15, v0, v9

    .line 346
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v18, v11, v16

    if-nez v18, :cond_7

    .line 351
    invoke-static {v14}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v16
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v10, "SHA1 [%s] failed."

    const/16 v1, 0x3f5

    if-eqz v16, :cond_5

    .line 352
    :try_start_4
    sget-object v14, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA1:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v8, v14}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v14

    .line 353
    invoke-static {v14}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_3

    .line 354
    :cond_4
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->E:J

    .line 355
    sget-wide v11, Lcom/uc/webview/export/internal/utility/f$a;->o:J

    invoke-virtual {v7, v11, v12}, Lcom/uc/webview/export/internal/utility/f$a;->a(J)V

    .line 356
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v2, v9

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 359
    :cond_5
    :goto_3
    sget-object v1, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA1:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v15, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 365
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 366
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    .line 367
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".copyCoreFileToSdcard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5049
    iget-wide v0, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    goto/16 :goto_1

    .line 361
    :cond_6
    :try_start_5
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->E:J

    .line 362
    sget-wide v0, Lcom/uc/webview/export/internal/utility/f$a;->o:J

    invoke-virtual {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/f$a;->a(J)V

    .line 363
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f5

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 374
    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x2

    if-lez v1, :cond_9

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    add-int/2addr v2, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s_%s.%s"

    const/4 v10, 0x3

    .line 379
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v10, v11

    aput-object v0, v10, v9

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v1, "%s_%s"

    .line 381
    new-array v2, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_4
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".tmp"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ".copyCoreFileToSdcard targetFile: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 388
    invoke-static {v8, v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/io/File;)V

    .line 389
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 396
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setLastModified(J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 406
    :try_start_8
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 391
    :cond_a
    :try_start_9
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->F:J

    .line 392
    sget-wide v10, Lcom/uc/webview/export/internal/utility/f$a;->p:J

    invoke-virtual {v7, v10, v11}, Lcom/uc/webview/export/internal/utility/f$a;->a(J)V

    .line 393
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v8, 0x3ed

    const-string v10, "Rename [%s] to [%s] failed."

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v9, v11

    const/4 v11, 0x1

    aput-object v1, v9, v11

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 398
    :try_start_a
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 401
    :try_start_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v0

    .line 406
    :try_start_c
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 409
    :cond_b
    :goto_6
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->F:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_c

    .line 410
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->B:J
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 6049
    :cond_c
    iget-wide v0, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    goto/16 :goto_1

    .line 401
    :goto_7
    :try_start_d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    :catch_3
    move-exception v0

    .line 406
    :try_start_e
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    :cond_d
    :goto_8
    throw v1

    .line 322
    :cond_e
    :goto_9
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->H:J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2049
    iget-wide v2, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 412
    :try_start_f
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->C:J

    .line 413
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 7049
    iget-wide v0, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    goto/16 :goto_1

    .line 8049
    :catchall_1
    iget-wide v0, v7, Lcom/uc/webview/export/internal/utility/f$a;->s:J

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ".shareCoreDecFile fCopyStat: "

    const-string v3, ".shareCoreDecFile fPreconditionStat: "

    const-string v4, ".shareCoreDecFile fDeleteStat: "

    const-string v5, ".shareCoreDecFile fSdcardAuthoryStat: "

    const-string v6, ".shareCoreDecFile fProcessStatExp: "

    const-string v7, ".shareCoreDecFile fProcessStat: "

    const-string v8, "csc_chev"

    const-string v9, "csc_corv"

    const-string v10, "csc_cspv"

    const-string v11, "csc_cdrc"

    const-string v12, "csc_cdri"

    const-string v13, "csc_cdrd"

    const-string v14, "csc_cdra"

    const-string v15, "csc_cdre"

    move-object/from16 v16, v2

    const-string v2, "csc_cdrp"

    .line 92
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v18, v4

    const-string v4, ".shareCoreDecFile "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-wide v3, Lcom/uc/webview/export/internal/setup/au$a;->a:J

    :try_start_0
    const-string v0, "csc_ctcp"

    .line 101
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    const-string v0, "0"

    const-string v19, "process_private_data_dir_suffix"

    .line 103
    invoke-static/range {v19 .. v19}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_24
    .catchall {:try_start_0 .. :try_end_0} :catchall_24

    if-nez v0, :cond_2

    .line 104
    :try_start_1
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->e:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v5

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v11, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v3, v11

    if-nez v2, :cond_0

    .line 195
    invoke-static {v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    sget-wide v10, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v10

    if-nez v2, :cond_1

    .line 197
    invoke-static {v8}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {v9}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-object/from16 v22, v9

    move-object v1, v12

    move-object v9, v6

    move-object v6, v7

    move-object/from16 v7, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-wide/from16 v18, v25

    move-object/from16 v17, v8

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    move-wide/from16 v12, v18

    goto/16 :goto_37

    :catch_0
    move-exception v0

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-object/from16 v22, v9

    move-object v1, v12

    move-object/from16 v29, v16

    move-object v9, v6

    move-object v6, v7

    move-object/from16 v16, v10

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-wide/from16 v18, v25

    move-object v10, v5

    move-object/from16 v17, v8

    move-object v5, v11

    move-object v11, v13

    move-wide/from16 v12, v18

    goto/16 :goto_33

    :cond_2
    move-object/from16 v21, v16

    move-object/from16 v20, v17

    move-object/from16 v1, v18

    :try_start_2
    const-string v0, "csc_cmcp"

    .line 107
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_23
    .catchall {:try_start_2 .. :try_end_2} :catchall_23

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    .line 108
    :try_start_3
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->g:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_22
    .catchall {:try_start_3 .. :try_end_3} :catchall_22

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 109
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/uc/webview/export/internal/utility/f;->a(Landroid/content/Context;)J

    move-result-wide v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_21
    .catchall {:try_start_4 .. :try_end_4} :catchall_21

    .line 110
    :try_start_5
    sget-wide v22, Lcom/uc/webview/export/internal/utility/f;->a:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_20
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    cmp-long v0, v22, v7

    if-eqz v0, :cond_5

    .line 111
    :try_start_6
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v22, v1

    :try_start_7
    const-string v1, ".run Sdcard\u6743\u9650\u68c0\u67e5\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_3

    .line 195
    invoke-static {v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_3

    .line 196
    :cond_3
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_4

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_3

    .line 199
    :cond_4
    invoke-static {v9}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_3
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, v18

    move-wide/from16 v52, v5

    move-object/from16 v6, v19

    move-wide/from16 v18, v52

    move-wide/from16 p0, v3

    move-wide/from16 v23, p0

    move-wide/from16 v25, v23

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v4, v20

    move-object/from16 v3, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v6

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v7

    move-object/from16 v7, v21

    :goto_4
    move-wide/from16 v20, v25

    goto/16 :goto_37

    :catch_1
    move-exception v0

    move-object/from16 v1, v18

    move-wide/from16 v52, v5

    move-object/from16 v6, v19

    move-wide/from16 v18, v52

    move-wide/from16 v23, v3

    move-wide/from16 v25, v23

    move-wide/from16 p0, v7

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v29, v21

    move-object/from16 v4, v20

    move-object/from16 v3, v22

    move-wide/from16 v20, v25

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v6

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v20

    goto/16 :goto_33

    :catchall_2
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v1, v18

    move-wide/from16 v52, v5

    move-object/from16 v6, v19

    move-wide/from16 v18, v52

    move-wide/from16 p0, v3

    move-wide/from16 v25, p0

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v4, v20

    move-object/from16 v3, v24

    move-wide/from16 v23, v25

    move-object v10, v6

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v7

    move-object/from16 v7, v21

    move-wide/from16 v20, v23

    goto/16 :goto_37

    :catch_2
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v1, v18

    move-wide/from16 v52, v5

    move-object/from16 v6, v19

    move-wide/from16 v18, v52

    move-wide/from16 v25, v3

    move-wide/from16 p0, v7

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v29, v21

    move-object/from16 v16, v10

    move-object/from16 v4, v20

    move-object/from16 v3, v24

    move-wide/from16 v20, v25

    move-wide/from16 v23, v20

    move-object v10, v6

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v23

    goto/16 :goto_33

    :cond_5
    move-object/from16 v24, v1

    move-object/from16 v1, v18

    move-object/from16 v25, v20

    move-object/from16 v26, v21

    move-wide/from16 v52, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move-wide/from16 v18, v52

    .line 115
    :try_start_8
    sget-wide v18, Lcom/uc/webview/export/internal/setup/au$a;->h:J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1f
    .catchall {:try_start_8 .. :try_end_8} :catchall_1f

    .line 118
    :try_start_9
    new-instance v0, Ljava/io/File;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1b

    move-object/from16 v16, v6

    :try_start_a
    invoke-static {}, Lcom/uc/webview/export/internal/utility/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/f;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1a
    .catchall {:try_start_a .. :try_end_a} :catchall_1a

    if-nez v6, :cond_8

    move-object/from16 v20, v5

    .line 121
    :try_start_b
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->d:J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v11, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v0, v3, v11

    if-nez v0, :cond_6

    .line 195
    invoke-static {v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_5

    .line 196
    :cond_6
    sget-wide v10, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v0, v3, v10

    if-nez v0, :cond_7

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_5

    .line 199
    :cond_7
    invoke-static {v9}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_5
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-wide/from16 p0, v3

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-wide/from16 v12, v18

    move-object/from16 v9, v20

    move-wide/from16 v20, p0

    move-wide/from16 v18, v7

    move-object/from16 v7, v26

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    :goto_6
    move-object/from16 v52, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v52

    goto/16 :goto_37

    :catch_3
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v20

    move-object/from16 v20, v25

    move-object/from16 v51, v26

    move-object/from16 v52, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v52

    goto/16 :goto_24

    :cond_8
    move-object/from16 v6, v16

    move-object/from16 v27, v24

    move-object/from16 v28, v25

    move-object/from16 v29, v26

    .line 130
    :try_start_c
    sget-wide v18, Lcom/uc/webview/export/internal/setup/au$a;->i:J

    const-string v16, "sc_cpy"

    .line 131
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    if-nez v16, :cond_9

    const/16 v16, 0x0

    move-object/from16 v16, v5

    move-object/from16 v20, v6

    const/4 v6, 0x0

    goto :goto_7

    .line 133
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_19
    .catchall {:try_start_c .. :try_end_c} :catchall_19

    move-object/from16 v20, v6

    move/from16 v6, v16

    move-object/from16 v16, v5

    .line 134
    :goto_7
    :try_start_d
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_18

    move-object/from16 v21, v1

    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_17
    .catchall {:try_start_e .. :try_end_e} :catchall_17

    move-object/from16 v22, v9

    :try_start_f
    const-string v9, "\u914d\u7f6e\u5141\u8bb8\u5185\u6838\u5171\u4eab:"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_16
    .catchall {:try_start_f .. :try_end_f} :catchall_16

    if-nez v6, :cond_c

    .line 136
    :try_start_10
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->c:J
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 137
    :try_start_11
    invoke-static {v0, v1, v9}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_a

    .line 195
    invoke-static {v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_8

    .line 196
    :cond_a
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_b

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_8

    .line 199
    :cond_b
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_8
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v9, v21

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-wide/from16 p0, v5

    move-wide/from16 v23, v3

    move-wide/from16 v25, v23

    move-wide/from16 v18, v7

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v6, v21

    move-object/from16 v7, v29

    move-wide/from16 v12, p0

    move-wide/from16 p0, v25

    move-object/from16 v16, v10

    move-object/from16 v10, v20

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-wide/from16 v20, p0

    goto/16 :goto_37

    :catch_4
    move-exception v0

    move-wide/from16 p0, v5

    move-wide/from16 v18, v3

    move-wide/from16 v23, v18

    move-wide/from16 v25, v23

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v6, v21

    move-wide/from16 v12, p0

    move-wide/from16 p0, v7

    move-object/from16 v16, v10

    move-object/from16 v10, v20

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-wide/from16 v20, v25

    goto/16 :goto_33

    :catchall_5
    move-exception v0

    move-wide/from16 p0, v3

    move-wide/from16 v23, p0

    move-wide/from16 v25, v23

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-wide/from16 v12, v18

    move-object/from16 v6, v21

    move-wide/from16 v18, v7

    move-object/from16 v16, v10

    move-object/from16 v10, v20

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-object/from16 v7, v29

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-wide/from16 v23, v3

    move-wide/from16 v25, v23

    move-wide/from16 p0, v7

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-wide/from16 v12, v18

    move-object/from16 v6, v21

    move-wide/from16 v18, v25

    move-object/from16 v16, v10

    move-object/from16 v10, v20

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-wide/from16 v20, v18

    goto/16 :goto_33

    :cond_c
    move-object/from16 v1, v16

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move-object/from16 v6, v27

    move-object/from16 v30, v28

    move-object/from16 v31, v29

    .line 141
    :try_start_12
    sget-wide v18, Lcom/uc/webview/export/internal/setup/au$a;->o:J

    const-string v16, "sc_hucmv"

    .line 142
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 143
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v16
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_15
    .catchall {:try_start_12 .. :try_end_12} :catchall_15

    if-eqz v16, :cond_f

    move-object/from16 v16, v5

    move-object/from16 v24, v6

    .line 144
    :try_start_13
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->p:J
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v11, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v0, v3, v11

    if-nez v0, :cond_d

    .line 195
    invoke-static {v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_9

    .line 196
    :cond_d
    sget-wide v10, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v0, v3, v10

    if-nez v0, :cond_e

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_9

    .line 199
    :cond_e
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_9
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v25, v20

    move-object v6, v9

    move-object v5, v11

    move-object v11, v13

    move-object v9, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-object/from16 v3, v24

    move-object/from16 v4, v30

    move-wide/from16 v23, v25

    move-wide/from16 v18, v7

    move-object/from16 v7, v31

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-wide/from16 v20, v3

    move-wide/from16 v25, v20

    move-wide/from16 p0, v7

    move-object v6, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v29, v31

    move-object v9, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-object/from16 v3, v24

    move-object/from16 v4, v30

    move-wide/from16 v18, v25

    move-wide/from16 v23, v18

    move-object/from16 v52, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v52

    goto/16 :goto_33

    :cond_f
    move-object/from16 v32, v30

    move-object/from16 v33, v31

    .line 148
    :try_start_14
    sget-wide v18, Lcom/uc/webview/export/internal/setup/au$a;->j:J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    move-object/from16 v24, v6

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move-object/from16 v6, p0

    .line 149
    :try_start_15
    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v9
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_13
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    move-object/from16 v20, v5

    .line 152
    :try_start_16
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->k:J
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_12
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    move-object/from16 v25, v11

    move-object/from16 v23, v12

    .line 153
    :try_start_17
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/setup/au$a;->a(I)J

    move-result-wide v11
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    .line 154
    :try_start_18
    sget-wide v18, Lcom/uc/webview/export/internal/setup/au$a;->q:J
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    cmp-long v26, v18, v11

    if-eqz v26, :cond_12

    .line 155
    :try_start_19
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    move-object/from16 v26, v1

    :try_start_1a
    const-string v1, ".run \u5148\u51b3\u6761\u4ef6\u5224\u65ad\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_10

    .line 195
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_a

    .line 196
    :cond_10
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_11

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_a

    .line 199
    :cond_11
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_a
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    move-wide/from16 v18, v5

    move-wide/from16 p0, v3

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v5, v25

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v23, v11

    move-object v11, v13

    move-wide/from16 v12, v18

    move-wide/from16 v18, v7

    move-object/from16 v7, v33

    move-wide/from16 v52, v9

    move-object/from16 v10, v20

    move-wide/from16 v20, v52

    move-object/from16 v9, v26

    move-wide/from16 v25, p0

    goto/16 :goto_37

    :catch_7
    move-exception v0

    move-wide/from16 v18, v5

    move-wide/from16 p0, v7

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v5, v25

    move-object/from16 v29, v33

    move-wide/from16 v52, v11

    move-object v11, v13

    move-wide/from16 v12, v18

    move-wide/from16 v18, v9

    move-object/from16 v10, v20

    move-object/from16 v9, v26

    move-wide/from16 v20, v3

    move-wide/from16 v25, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v23, v52

    goto/16 :goto_33

    :catchall_8
    move-exception v0

    move-wide/from16 v18, v5

    move-wide/from16 p0, v3

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-wide/from16 v25, p0

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v52, v9

    move-object v9, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-wide/from16 v20, v52

    move-wide/from16 v23, v11

    move-object v11, v13

    move-wide/from16 v12, v18

    goto/16 :goto_1a

    :catch_8
    move-exception v0

    move-wide/from16 v18, v5

    move-wide/from16 p0, v7

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-object/from16 v29, v33

    move-wide/from16 v25, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v52, v9

    move-object v9, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-wide/from16 v20, v25

    move-wide/from16 v23, v11

    move-object v11, v13

    move-wide/from16 v12, v18

    move-wide/from16 v18, v52

    goto/16 :goto_33

    :cond_12
    move-object/from16 v34, v1

    move-wide/from16 v18, v5

    move-object/from16 v35, v20

    move-object/from16 v1, v23

    move-object/from16 v36, v24

    move-object/from16 v37, v32

    move-object/from16 v38, v33

    .line 160
    :try_start_1b
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->l:J
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    .line 161
    :try_start_1c
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v18
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    if-eqz v18, :cond_15

    .line 162
    :try_start_1d
    sget-wide v5, Lcom/uc/webview/export/internal/setup/au$a;->n:J
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_13

    .line 195
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_b

    .line 196
    :cond_13
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_14

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_b

    .line 199
    :cond_14
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_b
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v37

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_9
    move-exception v0

    move-wide/from16 p0, v3

    move-wide/from16 v18, v7

    move-wide/from16 v23, v11

    move-object v11, v13

    move-object/from16 v7, v38

    move-wide v12, v5

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    move-wide/from16 v25, p0

    move-wide/from16 v20, v9

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    goto/16 :goto_37

    :catch_9
    move-exception v0

    move-wide/from16 p0, v7

    move-wide/from16 v18, v9

    move-wide/from16 v23, v11

    move-object v11, v13

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v29, v38

    move-wide v12, v5

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    goto/16 :goto_16

    :cond_15
    move-object/from16 v40, v21

    move-object/from16 v39, v25

    move-object/from16 v41, v34

    move-object/from16 v42, v35

    move-object/from16 v43, v36

    move-object/from16 v44, v37

    move-object/from16 v45, v38

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v3

    :goto_c
    const-wide/16 v23, 0x1

    add-long v18, v18, v23

    move-object/from16 v23, v1

    move-wide/from16 v24, v11

    move-object/from16 v26, v13

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    .line 170
    :try_start_1e
    invoke-static {v1, v0, v11}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 171
    :try_start_1f
    sget-wide v20, Lcom/uc/webview/export/internal/setup/au$a;->B:J
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    cmp-long v27, v12, v20

    if-eqz v27, :cond_1a

    :try_start_20
    sget-wide v20, Lcom/uc/webview/export/internal/setup/au$a;->G:J
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    cmp-long v27, v12, v20

    if-nez v27, :cond_16

    goto/16 :goto_11

    :cond_16
    const-wide/16 v20, 0x3

    cmp-long v27, v18, v20

    if-lez v27, :cond_19

    :try_start_21
    const-string v0, "csc_cdrt"

    .line 176
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v23

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_17

    .line 195
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_d

    .line 196
    :cond_17
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_18

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_d

    .line 199
    :cond_18
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_d
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v41

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v42

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v43

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v44

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v45

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :catchall_a
    move-exception v0

    move-wide/from16 p0, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-object/from16 v1, v23

    move-wide/from16 v23, v24

    move-object/from16 v11, v26

    goto :goto_f

    :catch_a
    move-exception v0

    move-wide/from16 v20, v3

    move-wide/from16 p0, v7

    move-wide/from16 v18, v9

    move-object/from16 v1, v23

    move-wide/from16 v23, v24

    move-object/from16 v11, v26

    goto :goto_10

    :cond_19
    move-wide/from16 v20, v12

    move-object/from16 v1, v23

    move-wide/from16 v11, v24

    move-object/from16 v13, v26

    goto/16 :goto_c

    :catchall_b
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v11, v26

    move-wide/from16 p0, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-wide/from16 v23, v24

    :goto_f
    move-object/from16 v9, v41

    move-object/from16 v10, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    move-object/from16 v7, v45

    move-wide/from16 v25, v12

    move-wide v12, v5

    move-object/from16 v5, v39

    move-object/from16 v6, v40

    goto/16 :goto_37

    :catch_b
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v11, v26

    move-wide/from16 v20, v3

    move-wide/from16 p0, v7

    move-wide/from16 v18, v9

    move-wide/from16 v23, v24

    :goto_10
    move-object/from16 v9, v41

    move-object/from16 v10, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    move-object/from16 v29, v45

    move-wide/from16 v25, v12

    move-wide v12, v5

    move-object/from16 v5, v39

    move-object/from16 v6, v40

    goto/16 :goto_33

    :cond_1a
    :goto_11
    move-object/from16 v1, v23

    move-object/from16 v11, v26

    move-object/from16 v46, v41

    move-object/from16 v47, v42

    move-object/from16 v48, v43

    move-object/from16 v49, v44

    move-object/from16 v50, v45

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_1b

    .line 195
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_12

    .line 196
    :cond_1b
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_1c

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_12

    .line 199
    :cond_1c
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_12
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v47

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v48

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v49

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_c
    move-exception v0

    move-wide/from16 v20, v12

    goto :goto_13

    :catch_c
    move-exception v0

    move-wide/from16 v20, v12

    goto :goto_14

    :catchall_d
    move-exception v0

    :goto_13
    move-object/from16 v1, v23

    move-wide/from16 v18, v24

    move-object/from16 v11, v26

    move-wide/from16 v23, v5

    move-wide/from16 v25, v9

    move-object/from16 v5, v39

    move-object/from16 v6, v40

    move-wide/from16 p0, v3

    move-wide/from16 v12, v23

    move-object/from16 v9, v41

    move-object/from16 v10, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    move-wide/from16 v23, v18

    move-wide/from16 v18, v7

    move-object/from16 v7, v45

    move-wide/from16 v52, v20

    move-wide/from16 v20, v25

    move-wide/from16 v25, v52

    goto/16 :goto_37

    :catch_d
    move-exception v0

    :goto_14
    move-object/from16 v1, v23

    move-wide/from16 v18, v24

    move-object/from16 v11, v26

    move-wide/from16 v23, v5

    move-wide/from16 v25, v9

    move-object/from16 v5, v39

    move-object/from16 v6, v40

    move-wide/from16 p0, v7

    move-wide/from16 v12, v23

    move-object/from16 v9, v41

    move-object/from16 v10, v42

    move-object/from16 v29, v45

    move-wide/from16 v23, v18

    move-wide/from16 v18, v25

    move-wide/from16 v25, v20

    move-wide/from16 v20, v3

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    goto/16 :goto_33

    :catchall_e
    move-exception v0

    move-wide/from16 v23, v5

    move-wide/from16 v18, v11

    move-object v11, v13

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-wide/from16 v25, v9

    move-wide/from16 p0, v3

    move-wide/from16 v12, v23

    move-wide/from16 v20, v25

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-wide/from16 v25, p0

    move-wide/from16 v23, v18

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    move-wide/from16 v18, v7

    goto :goto_15

    :catch_e
    move-exception v0

    move-wide/from16 v23, v5

    move-wide/from16 v18, v11

    move-object v11, v13

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-wide/from16 v25, v9

    move-wide/from16 v20, v3

    move-wide/from16 p0, v7

    move-wide/from16 v12, v23

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v29, v38

    move-wide/from16 v23, v18

    move-wide/from16 v18, v25

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    goto/16 :goto_17

    :catchall_f
    move-exception v0

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-wide/from16 v25, v9

    move-wide/from16 v20, v18

    move-wide/from16 v18, v11

    move-object v11, v13

    move-wide/from16 p0, v3

    move-wide/from16 v23, v18

    move-wide/from16 v12, v20

    move-wide/from16 v20, v25

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-wide/from16 v25, p0

    move-wide/from16 v18, v7

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    :goto_15
    move-object/from16 v7, v38

    goto/16 :goto_37

    :catch_f
    move-exception v0

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    move-wide/from16 v25, v9

    move-wide/from16 v20, v18

    move-wide/from16 v18, v11

    move-object v11, v13

    move-wide/from16 p0, v7

    move-wide/from16 v23, v18

    move-wide/from16 v12, v20

    move-wide/from16 v18, v25

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v29, v38

    :goto_16
    move-wide/from16 v20, v3

    move-wide/from16 v25, v20

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    goto/16 :goto_33

    :catchall_10
    move-exception v0

    move-wide/from16 v18, v11

    move-object v11, v13

    move-wide/from16 v52, v9

    move-object v9, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-wide/from16 v54, v5

    move-object/from16 v6, v21

    move-wide/from16 v20, v54

    move-object/from16 v5, v25

    move-wide/from16 v25, v52

    move-wide/from16 p0, v3

    move-wide/from16 v12, v20

    move-wide/from16 v20, v25

    move-wide/from16 v25, p0

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v23, v18

    goto/16 :goto_1a

    :catch_10
    move-exception v0

    move-wide/from16 v18, v11

    move-object v11, v13

    move-wide/from16 v52, v9

    move-object v9, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-wide/from16 v54, v5

    move-object/from16 v6, v21

    move-wide/from16 v20, v54

    move-object/from16 v5, v25

    move-wide/from16 v25, v52

    move-wide/from16 p0, v7

    move-wide/from16 v12, v20

    move-object/from16 v29, v33

    move-wide/from16 v20, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v23, v18

    move-wide/from16 v18, v25

    :goto_17
    move-wide/from16 v25, v20

    goto/16 :goto_33

    :catchall_11
    move-exception v0

    move-object v11, v13

    move-wide/from16 v52, v9

    move-object v9, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-wide/from16 v54, v5

    move-object/from16 v6, v21

    move-wide/from16 v20, v54

    move-object/from16 v5, v25

    move-wide/from16 v25, v52

    move-wide/from16 p0, v3

    move-wide/from16 v18, v7

    move-wide/from16 v12, v20

    move-wide/from16 v20, v25

    move-object/from16 v7, v33

    move-wide/from16 v25, p0

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    goto/16 :goto_2a

    :catch_11
    move-exception v0

    move-object v11, v13

    move-wide/from16 v52, v9

    move-object v9, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v23

    move-wide/from16 v54, v5

    move-object/from16 v6, v21

    move-wide/from16 v20, v54

    move-object/from16 v5, v25

    move-wide/from16 v25, v52

    move-wide/from16 p0, v7

    move-wide/from16 v12, v20

    goto :goto_18

    :catchall_12
    move-exception v0

    move-wide/from16 v25, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v6, v21

    move-object v9, v1

    move-object v1, v12

    move-wide/from16 p0, v3

    move-wide/from16 v12, v18

    move-object/from16 v10, v20

    move-wide/from16 v20, v25

    move-wide/from16 v25, p0

    goto :goto_19

    :catch_12
    move-exception v0

    move-wide/from16 v25, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v6, v21

    move-object v9, v1

    move-object v1, v12

    move-wide/from16 p0, v7

    move-wide/from16 v12, v18

    move-object/from16 v10, v20

    :goto_18
    move-wide/from16 v18, v25

    move-object/from16 v29, v33

    move-wide/from16 v20, v3

    move-wide/from16 v25, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    goto/16 :goto_2b

    :catchall_13
    move-exception v0

    move-object v9, v1

    move-object v10, v5

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v6, v21

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v25, v20

    move-wide/from16 v12, v18

    :goto_19
    move-wide/from16 v18, v7

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-object/from16 v7, v33

    goto/16 :goto_2a

    :catch_13
    move-exception v0

    move-object v9, v1

    move-object v10, v5

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v6, v21

    move-wide/from16 v20, v3

    move-wide/from16 v25, v20

    move-wide/from16 p0, v7

    move-wide/from16 v12, v18

    move-object/from16 v29, v33

    move-wide/from16 v18, v25

    move-object/from16 v3, v24

    move-object/from16 v4, v32

    move-wide/from16 v23, v18

    goto/16 :goto_33

    :catchall_14
    move-exception v0

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v52, v9

    move-object v9, v1

    move-object v1, v12

    move-object v12, v6

    move-object/from16 v6, v52

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-object v3, v12

    move-wide/from16 v12, v18

    move-object/from16 v4, v32

    :goto_1a
    move-wide/from16 v18, v7

    move-object/from16 v7, v33

    goto/16 :goto_37

    :catch_14
    move-exception v0

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v52, v9

    move-object v9, v1

    move-object v1, v12

    move-object v12, v6

    move-object/from16 v6, v52

    move-wide/from16 v20, v3

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 p0, v7

    move-object/from16 v29, v33

    move-object v3, v12

    move-wide/from16 v12, v18

    move-object/from16 v4, v32

    goto :goto_1b

    :catchall_15
    move-exception v0

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v52, v9

    move-object v9, v1

    move-object v1, v12

    move-object v12, v6

    move-object/from16 v6, v52

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-object v3, v12

    move-wide/from16 v12, v18

    move-object/from16 v4, v30

    move-wide/from16 v18, v7

    move-object/from16 v7, v31

    goto/16 :goto_37

    :catch_15
    move-exception v0

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v52, v9

    move-object v9, v1

    move-object v1, v12

    move-object v12, v6

    move-object/from16 v6, v52

    move-wide/from16 v20, v3

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 p0, v7

    move-object/from16 v29, v31

    move-object v3, v12

    move-wide/from16 v12, v18

    move-object/from16 v4, v30

    :goto_1b
    move-wide/from16 v18, v25

    goto/16 :goto_33

    :catchall_16
    move-exception v0

    goto :goto_1c

    :catch_16
    move-exception v0

    goto :goto_1d

    :catchall_17
    move-exception v0

    move-object/from16 v22, v9

    :goto_1c
    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v6, v21

    goto :goto_1e

    :catch_17
    move-exception v0

    move-object/from16 v22, v9

    :goto_1d
    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v6, v21

    goto :goto_1f

    :catchall_18
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    :goto_1e
    move-object/from16 v16, v10

    move-wide/from16 p0, v3

    move-wide/from16 v23, p0

    move-wide/from16 v25, v23

    move-wide/from16 v12, v18

    move-object/from16 v10, v20

    move-wide/from16 v20, v25

    move-wide/from16 v18, v7

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto :goto_20

    :catch_18
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v1, v12

    move-object v11, v13

    move-object/from16 v9, v16

    :goto_1f
    move-object/from16 v16, v10

    move-wide/from16 v23, v3

    move-wide/from16 v25, v23

    move-wide/from16 p0, v7

    move-wide/from16 v12, v18

    move-object/from16 v10, v20

    move-wide/from16 v18, v25

    move-wide/from16 v20, v18

    goto :goto_21

    :catchall_19
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object v9, v5

    move-object v10, v6

    move-object v5, v11

    move-object v11, v13

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 v12, v18

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-wide/from16 v18, v7

    :goto_20
    move-object/from16 v7, v29

    goto/16 :goto_37

    :catch_19
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object v9, v5

    move-object v10, v6

    move-object v5, v11

    move-object v11, v13

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v20, v3

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move-wide/from16 p0, v7

    move-wide/from16 v12, v18

    move-wide/from16 v18, v25

    :goto_21
    move-object/from16 v3, v27

    move-object/from16 v4, v28

    goto/16 :goto_33

    :catchall_1a
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v9

    move-object v1, v12

    move-object v9, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v52, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v52

    goto :goto_22

    :catch_1a
    move-exception v0

    move-object v6, v1

    move-object/from16 v22, v9

    move-object v1, v12

    move-object/from16 v51, v26

    move-object v9, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v52, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v52

    goto :goto_23

    :catchall_1b
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object v9, v5

    move-object v10, v6

    move-object v5, v11

    move-object v11, v13

    move-object v6, v1

    move-object v1, v12

    :goto_22
    move-wide/from16 p0, v3

    move-wide/from16 v20, p0

    move-wide/from16 v12, v18

    move-wide/from16 v18, v7

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    move-wide/from16 v23, v20

    goto/16 :goto_30

    :catch_1b
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v51, v26

    move-object v9, v5

    move-object v10, v6

    move-object v5, v11

    move-object v11, v13

    move-object v6, v1

    move-object v1, v12

    :goto_23
    move-object/from16 v20, v25

    .line 125
    :goto_24
    :try_start_22
    sget-wide v12, Lcom/uc/webview/export/internal/setup/au$a;->m:J
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_1e
    .catchall {:try_start_22 .. :try_end_22} :catchall_1e

    move-object/from16 v35, v10

    .line 126
    :try_start_23
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v10
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1d
    .catchall {:try_start_23 .. :try_end_23} :catchall_1d

    move-object/from16 v26, v9

    :try_start_24
    const-string v9, ".shareCoreDecFile createAppSubFolder"

    invoke-static {v10, v9, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1c
    .catchall {:try_start_24 .. :try_end_24} :catchall_1c

    .line 188
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_1d

    .line 195
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_25

    .line 196
    :cond_1d
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_1e

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_25

    .line 199
    :cond_1e
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_25
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v9, v26

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v10, v35

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v51

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1c
    move-exception v0

    move-object/from16 v9, v26

    goto :goto_26

    :catch_1c
    move-exception v0

    move-object/from16 v9, v26

    goto :goto_27

    :catchall_1d
    move-exception v0

    :goto_26
    move-object/from16 v10, v35

    move-wide/from16 v52, v3

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-object/from16 v3, v24

    move-wide/from16 v23, v7

    goto :goto_28

    :catch_1d
    move-exception v0

    :goto_27
    move-object/from16 v10, v35

    move-wide/from16 v52, v3

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-object/from16 v3, v24

    move-wide/from16 v23, v7

    goto :goto_29

    :catchall_1e
    move-exception v0

    move-wide/from16 v52, v3

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-object/from16 v3, v24

    move-wide/from16 v23, v7

    move-wide/from16 v12, v18

    :goto_28
    move-wide/from16 p0, v20

    move-wide/from16 v25, p0

    move-wide/from16 v18, v23

    move-object/from16 v7, v51

    goto/16 :goto_2a

    :catch_1e
    move-exception v0

    move-wide/from16 v52, v3

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-object/from16 v3, v24

    move-wide/from16 v23, v7

    move-wide/from16 v12, v18

    :goto_29
    move-wide/from16 v18, v20

    move-wide/from16 v25, v18

    move-wide/from16 p0, v23

    move-object/from16 v29, v51

    goto/16 :goto_2b

    :catchall_1f
    move-exception v0

    move-wide/from16 v20, v3

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v3, v24

    move-object v9, v5

    move-object v10, v6

    move-wide/from16 v23, v7

    move-object v5, v11

    move-object v11, v13

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-wide/from16 p0, v20

    move-wide/from16 v18, v23

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    move-wide/from16 v23, p0

    goto/16 :goto_30

    :catch_1f
    move-exception v0

    move-wide/from16 v20, v3

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object v9, v5

    move-object v10, v6

    move-wide/from16 v23, v7

    move-object v5, v11

    move-object v11, v13

    move-object v6, v1

    move-object v1, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v20

    move-wide/from16 p0, v23

    move-object/from16 v29, v26

    goto/16 :goto_32

    :catchall_20
    move-exception v0

    move-wide/from16 v23, v7

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    move-wide/from16 v52, v3

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-wide/from16 v54, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v6, v18

    move-wide/from16 v18, v54

    move-wide/from16 v12, v18

    move-wide/from16 p0, v20

    move-wide/from16 v25, p0

    move-wide/from16 v18, v23

    :goto_2a
    move-wide/from16 v23, v25

    goto/16 :goto_37

    :catch_20
    move-exception v0

    move-wide/from16 v23, v7

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    move-wide/from16 v52, v3

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-wide/from16 v54, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v6, v18

    move-wide/from16 v18, v54

    move-object/from16 v29, v7

    move-wide/from16 v12, v18

    move-wide/from16 v18, v20

    move-wide/from16 v25, v18

    move-wide/from16 p0, v23

    :goto_2b
    move-wide/from16 v23, v25

    goto/16 :goto_33

    :catchall_21
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    move-wide/from16 v52, v3

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-wide/from16 v54, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v6, v18

    move-wide/from16 v18, v54

    move-wide/from16 v12, v18

    move-wide/from16 p0, v20

    move-wide/from16 v18, p0

    goto/16 :goto_2f

    :catch_21
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    move-wide/from16 v52, v3

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    move-wide/from16 v54, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v6, v18

    move-wide/from16 v18, v54

    move-object/from16 v29, v7

    move-wide/from16 v12, v18

    move-wide/from16 p0, v20

    move-wide/from16 v18, p0

    goto/16 :goto_32

    :catchall_22
    move-exception v0

    move-object v6, v7

    move-object/from16 v17, v8

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    goto :goto_2c

    :catch_22
    move-exception v0

    move-object v6, v7

    move-object/from16 v17, v8

    move-object/from16 v22, v9

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v9, v16

    move-object/from16 v7, v21

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    goto :goto_2d

    :catchall_23
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v9, v6

    move-object v6, v7

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v7, v21

    :goto_2c
    move-wide/from16 v52, v3

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    goto :goto_2e

    :catch_23
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v9, v6

    move-object v6, v7

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v7, v21

    :goto_2d
    move-wide/from16 v52, v3

    move-object v3, v1

    move-object v1, v12

    move-object/from16 v4, v20

    move-wide/from16 v20, v52

    goto :goto_31

    :catchall_24
    move-exception v0

    move-wide/from16 v20, v3

    move-object/from16 v22, v9

    move-object v1, v12

    move-object/from16 v4, v17

    move-object v9, v6

    move-object v6, v7

    move-object/from16 v17, v8

    move-object/from16 v7, v16

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v3, v18

    :goto_2e
    move-wide/from16 p0, v20

    move-wide/from16 v12, p0

    move-wide/from16 v18, v12

    :goto_2f
    move-wide/from16 v23, v18

    :goto_30
    move-wide/from16 v25, v23

    goto/16 :goto_37

    :catch_24
    move-exception v0

    move-wide/from16 v20, v3

    move-object/from16 v22, v9

    move-object v1, v12

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object v9, v6

    move-object v6, v7

    move-object/from16 v17, v8

    move-object/from16 v7, v16

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v11

    move-object v11, v13

    :goto_31
    move-object/from16 v29, v7

    move-wide/from16 p0, v20

    move-wide/from16 v12, p0

    move-wide/from16 v18, v12

    :goto_32
    move-wide/from16 v23, v18

    move-wide/from16 v25, v23

    .line 178
    :goto_33
    :try_start_25
    sget-wide v7, Lcom/uc/webview/export/internal/setup/au$a;->f:J
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_27

    move-object/from16 v28, v4

    .line 179
    :try_start_26
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    move-object/from16 v27, v3

    :try_start_27
    const-string v3, ".shareCoreDecFile"

    invoke-static {v4, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_25

    .line 188
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    move-wide/from16 v3, v25

    cmp-long v2, v3, v0

    if-nez v2, :cond_1f

    .line 195
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_34

    .line 196
    :cond_1f
    sget-wide v0, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_20

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_34

    .line 199
    :cond_20
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_34
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v5, p0

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v5, v18

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v5, v23

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_25
    move-exception v0

    move-wide/from16 v20, v7

    move-object/from16 v3, v27

    goto :goto_35

    :catchall_26
    move-exception v0

    move-wide/from16 v20, v7

    :goto_35
    move-object/from16 v4, v28

    goto :goto_36

    :catchall_27
    move-exception v0

    :goto_36
    move-object/from16 v7, v29

    move-wide/from16 v52, p0

    move-wide/from16 p0, v25

    move-wide/from16 v25, v18

    move-wide/from16 v18, v23

    move-wide/from16 v23, v52

    move-wide/from16 v52, v20

    move-wide/from16 v20, v25

    move-wide/from16 v25, p0

    move-wide/from16 p0, v52

    move-wide/from16 v54, v18

    move-wide/from16 v18, v23

    move-wide/from16 v23, v54

    .line 188
    :goto_37
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-wide v1, Lcom/uc/webview/export/internal/setup/au$a;->B:J

    move-wide/from16 v14, v25

    cmp-long v5, v14, v1

    if-eqz v5, :cond_22

    .line 196
    sget-wide v1, Lcom/uc/webview/export/internal/setup/au$a;->G:J

    cmp-long v5, v14, v1

    if-nez v5, :cond_21

    .line 197
    invoke-static/range {v17 .. v17}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_38

    .line 199
    :cond_21
    invoke-static/range {v22 .. v22}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_38

    .line 195
    :cond_22
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 201
    :goto_38
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v5, p0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v5, v18

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v9, v20

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v3, v23

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    goto :goto_3a

    :goto_39
    throw v0

    :goto_3a
    goto :goto_39
.end method

.method public static a(Landroid/content/Context;ZZLjava/util/concurrent/Callable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "0"

    .line 432
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".statDevicesHasShareCore isUCCore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasUpdSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wifiChecker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "process_private_data_dir_suffix"

    .line 437
    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "PREF_SC_HIS"

    const/4 v3, 0x4

    .line 441
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "NO_WIFI_HISTORY"

    if-eqz p3, :cond_1

    .line 442
    :try_start_2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 p3, p3, 0x1

    :goto_0
    const-string v4, "INVALID_UPD_HISTORY"

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    .line 444
    :cond_2
    :try_start_3
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 445
    :goto_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ".statDevicesHasShareCore noWifiTimes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", invalidUpdateTimes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 448
    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "csc_nwits"

    .line 451
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "csc_iupdts"

    .line 452
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "csc_cisuc"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "1"

    if-eqz p1, :cond_3

    move-object p1, v2

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 453
    :goto_2
    :try_start_4
    invoke-static {p3, p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "csc_hupds"

    if-eqz p2, :cond_4

    move-object v0, v2

    .line 454
    :cond_4
    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 456
    :try_start_5
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".statDevicesHasShareCore history stat"

    invoke-static {p2, p3, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    :goto_3
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 459
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".statDevicesHasShareCore Sdcard\u914d\u7f6e\u53ca\u6743\u9650\u6821\u9a8c\u5931\u8d25"

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 463
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "sc_pkgl"

    .line 466
    invoke-static {p2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 468
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "\\^\\^"

    .line 469
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 470
    array-length p3, p2

    :goto_4
    if-ge v1, p3, :cond_7

    aget-object v0, p2, v1

    .line 471
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 474
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 478
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 479
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 480
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    const-string v0, ".statDevicesHasShareCore "

    if-nez p3, :cond_8

    .line 481
    :try_start_6
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not exists."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 485
    :cond_8
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 486
    array-length v1, p3

    if-nez v1, :cond_9

    goto :goto_6

    .line 490
    :cond_9
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "csc_dhsc_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    array-length p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 487
    :cond_a
    :goto_6
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " empty."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :cond_b
    return-void

    :catch_1
    move-exception p0

    .line 495
    invoke-static {}, Lcom/uc/webview/export/internal/setup/au;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".statDevicesHasShareCore"

    invoke-static {p1, p2, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/f$a;)Z
    .locals 3

    const-string v0, "sc_hucmv"

    if-eqz p2, :cond_0

    .line 250
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "csc_vconf"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {p0, p1, v0, p2}, Lcom/uc/webview/export/internal/utility/f;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/f$a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
