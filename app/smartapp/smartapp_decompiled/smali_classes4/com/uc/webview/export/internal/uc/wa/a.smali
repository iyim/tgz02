.class public Lcom/uc/webview/export/internal/uc/wa/a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/wa/a$b;,
        Lcom/uc/webview/export/internal/uc/wa/a$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field public static b:Z = false

.field public static c:I = 0x0

.field public static e:I = 0x5000

.field public static f:I = 0x500000

.field public static g:I

.field private static j:Lcom/uc/webview/export/internal/uc/wa/a;


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/uc/wa/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/text/SimpleDateFormat;

.field public i:Ljava/lang/Object;

.field private k:Landroid/content/Context;

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/internal/uc/wa/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    sget v0, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    add-int/lit16 v0, v0, 0x400

    sput v0, Lcom/uc/webview/export/internal/uc/wa/a;->g:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->l:Landroid/os/HandlerThread;

    .line 148
    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->m:Landroid/os/Handler;

    .line 188
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->o:Ljava/text/SimpleDateFormat;

    .line 189
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->h:Ljava/text/SimpleDateFormat;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->i:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/io/BufferedWriter;Ljava/util/Map;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 733
    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 734
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 735
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "="

    .line 736
    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "`"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 739
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a()Lcom/uc/webview/export/internal/uc/wa/a;
    .locals 1

    .line 197
    sget-object v0, Lcom/uc/webview/export/internal/uc/wa/a;->j:Lcom/uc/webview/export/internal/uc/wa/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/Context;)V

    .line 199
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/uc/wa/a;->j:Lcom/uc/webview/export/internal/uc/wa/a;

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4

    const-string v0, "2"

    const-string v1, ""

    .line 1187
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1188
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1190
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "UC_WA_STAT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1191
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1192
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/uc/wa/a;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 6587
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "sdk_international_env"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "4ee01a39f0c1"

    goto :goto_0

    :cond_0
    const-string v1, "27120f2b4115"

    .line 6590
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 6592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AppChk#2014"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/wa/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6593
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, "https://gjapplog.ucweb.com/collect?uc_param_str=&chk="

    goto :goto_1

    :cond_1
    const-string v0, "https://applog.uc.cn/collect?uc_param_str=&chk="

    :goto_1
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6594
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&vno="

    .line 6595
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6596
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&uuid="

    .line 6597
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6598
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&app="

    .line 6599
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6600
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6601
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/f;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "&zip=gzip"

    .line 6602
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "&enc=aes"

    .line 6605
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6607
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/uc/webview/export/internal/uc/wa/a;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 218
    monitor-exit v0

    return-void

    .line 220
    :cond_0
    :try_start_1
    sget-object v1, Lcom/uc/webview/export/internal/uc/wa/a;->j:Lcom/uc/webview/export/internal/uc/wa/a;

    if-nez v1, :cond_1

    .line 221
    new-instance v1, Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/uc/wa/a;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/uc/wa/a;->j:Lcom/uc/webview/export/internal/uc/wa/a;

    .line 223
    :cond_1
    sget-object v1, Lcom/uc/webview/export/internal/uc/wa/a;->j:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "d"

    const-string v1, "SDKWaStat"

    .line 343
    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "ev_ac="

    .line 347
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    .line 350
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 351
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "`"

    .line 355
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->f()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V
    .locals 2

    .line 7214
    iget-object p0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    const-string v0, "UC_WA_STAT"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7215
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    const-string p1, "4"

    .line 7217
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7219
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 1121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    .line 1123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1004
    sget-object v0, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    const-string v1, "sdk_sn"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    const-string v1, "ver"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Ljava/util/Map;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/internal/uc/wa/a$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/uc/wa/a$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "~"

    .line 634
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 637
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/uc/webview/export/internal/uc/wa/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    const-string v3, "SDKWaStat"

    if-eqz v2, :cond_1

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "savePVToFile:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 647
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 648
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 649
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 650
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object/from16 v16, v4

    move-object v4, v1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object/from16 v16, v4

    move-object v4, v1

    goto/16 :goto_6

    :cond_2
    const/4 v6, 0x0

    .line 653
    :goto_0
    :try_start_2
    sget v4, Lcom/uc/webview/export/internal/uc/wa/a;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v7, ") more then "

    if-lt v6, v4, :cond_4

    .line 654
    :try_start_3
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v0, :cond_3

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 724
    :cond_3
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 725
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 726
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 727
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    .line 659
    :cond_4
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v4, v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 661
    :try_start_5
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x400

    invoke-direct {v1, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 664
    :try_start_6
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v12, "@d@"

    const-string v13, "@k@"

    if-eqz v11, :cond_8

    :try_start_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    add-int v14, v10, v6

    .line 665
    sget v15, Lcom/uc/webview/export/internal/uc/wa/a;->e:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lt v14, v15, :cond_5

    .line 666
    :try_start_8
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v0, :cond_8

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "write merge data, size("

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    :cond_5
    :try_start_9
    const-string v14, "@0"

    .line 673
    invoke-virtual {v1, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x2

    .line 676
    invoke-virtual {v1, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x3

    .line 678
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 679
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 680
    aget-object v15, v14, v8

    const-string v2, "0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 681
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v2

    const/4 v13, 0x2

    if-eq v2, v13, :cond_6

    mul-int/lit8 v2, v2, 0xa

    .line 683
    sget v13, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    add-int/2addr v2, v13

    .line 686
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 688
    :cond_7
    invoke-virtual {v1, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v10, v2

    .line 691
    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x3

    .line 693
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-static {v1, v2, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/io/BufferedWriter;Ljava/util/Map;I)I

    move-result v2

    add-int/2addr v10, v2

    .line 694
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-static {v1, v2, v8}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/io/BufferedWriter;Ljava/util/Map;I)I

    move-result v2

    add-int/2addr v10, v2

    .line 696
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v2, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v4

    const/16 v16, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_8
    :goto_2
    const/16 v0, 0xa

    if-ge v5, v0, :cond_a

    .line 700
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    add-int v0, v10, v6

    .line 701
    sget v2, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    if-lt v0, v2, :cond_9

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "write un merge data, size("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p2

    .line 706
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/uc/wa/a$b;

    const-string v9, "@1"

    .line 708
    invoke-virtual {v1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x2

    .line 711
    invoke-virtual {v1, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x3

    .line 713
    iget-object v9, v2, Lcom/uc/webview/export/internal/uc/wa/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 714
    iget-object v9, v2, Lcom/uc/webview/export/internal/uc/wa/a$b;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v10, v9

    .line 716
    invoke-virtual {v1, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x3

    .line 718
    iget-object v2, v2, Lcom/uc/webview/export/internal/uc/wa/a$b;->b:Ljava/util/Map;

    invoke-static {v1, v2, v8}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/io/BufferedWriter;Ljava/util/Map;I)I

    move-result v2

    add-int/2addr v10, v2

    .line 719
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 724
    :cond_a
    :goto_3
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 725
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 726
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    .line 727
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object/from16 v16, v1

    :goto_4
    move-object v2, v4

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v16, v2

    :goto_5
    move-object v1, v4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    move-object/from16 v16, v4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    move-object/from16 v16, v4

    .line 722
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 724
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 725
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 726
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 727
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_5
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    .line 724
    :goto_7
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 725
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 726
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 727
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method static synthetic a(Ljava/lang/String;[B)Z
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)[B
    .locals 10

    .line 5865
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->j()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5869
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lt=uc"

    .line 5870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 5874
    aget-object v3, v0, v2

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x1

    .line 5875
    aget-object v0, v0, v4

    check-cast v0, Ljava/util/List;

    .line 5877
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->k()Ljava/util/List;

    move-result-object p0

    .line 5878
    invoke-static {v3, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v2

    .line 5879
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, ") more then "

    const-string v6, "SDKWaStat"

    const-string v7, "\n"

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5880
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sget v9, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    if-lt v8, v9, :cond_2

    .line 5881
    sget-boolean p1, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz p1, :cond_6

    .line 5882
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "getUploadData MergeData size("

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5886
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5887
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 5888
    aget-object v7, v6, v2

    aget-object v6, v6, v4

    invoke-static {v1, v7, v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5891
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v5, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5892
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v7, v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5895
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v3, v3, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5896
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5899
    :cond_5
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5900
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v6, v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5905
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/uc/wa/a$b;

    .line 5906
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sget v8, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    if-lt v3, v8, :cond_8

    .line 5907
    sget-boolean p0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz p0, :cond_a

    .line 5908
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getUploadData UnMergeData size("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5909
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5908
    invoke-static {v6, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 5913
    :cond_8
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5914
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 5915
    aget-object v9, v8, v2

    aget-object v8, v8, v4

    invoke-static {v1, v9, v8}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5919
    :cond_9
    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/wa/a$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5920
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v8, v3}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 5923
    :cond_a
    :goto_7
    sget-boolean p0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz p0, :cond_b

    .line 5924
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getUploadData:\n"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5927
    :cond_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5928
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "stat_size"

    invoke-static {v1, p1, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5930
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/internal/uc/wa/a$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/uc/wa/a$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "01"

    const-string v1, "10"

    const-string v2, "20"

    .line 1085
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    .line 1086
    aget-object v3, v0, v2

    .line 1087
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1088
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v5, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-static {v5}, Lcom/uc/webview/export/internal/uc/wa/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1089
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    :cond_1
    move-object v1, v5

    goto :goto_1

    .line 1093
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/uc/wa/a$b;

    .line 1094
    iget-object v5, v5, Lcom/uc/webview/export/internal/uc/wa/a$b;->b:Ljava/util/Map;

    invoke-static {v5}, Lcom/uc/webview/export/internal/uc/wa/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1095
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    :cond_4
    move-object v1, v5

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 2

    .line 5203
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SDKUUID"

    .line 5205
    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static b(Ljava/lang/String;[B)Z
    .locals 8

    const-string v0, "SDKWaStat"

    .line 1361
    :try_start_0
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v1, :cond_0

    const-string v1, "traffic_stat"

    .line 1362
    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const v1, 0xa002

    .line 1364
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1367
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1371
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1373
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->c()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1374
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->d()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    .line 1375
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1376
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "POST"

    .line 1377
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    .line 1379
    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    .line 1380
    array-length v5, p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1382
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1384
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v5, 0xc8

    if-eq p1, v5, :cond_2

    .line 1386
    sget-boolean p0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz p0, :cond_1

    const-string p0, "response == null"

    .line 1387
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1412
    :cond_1
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1413
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1414
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return v1

    .line 1392
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 p1, 0x400

    .line 1393
    :try_start_4
    new-array p1, p1, [B

    .line 1395
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1396
    :goto_1
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 1397
    invoke-virtual {v5, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1399
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1400
    sget-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v2, :cond_4

    .line 1401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "response:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "retcode=0"

    .line 1404
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_5

    .line 1412
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1413
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1414
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return v3

    .line 1412
    :cond_5
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1413
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1414
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v5, v2

    :goto_2
    move-object v2, p0

    move-object p0, p1

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_3
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v2

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, v2

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v4, v2

    move-object v5, v4

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    .line 1408
    :goto_4
    :try_start_6
    sget-boolean v3, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v3, :cond_6

    const-string v3, ""

    .line 1409
    invoke-static {v0, v3, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1412
    :cond_6
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1413
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1414
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :goto_5
    return v1

    :catchall_4
    move-exception p0

    move-object v5, v2

    move-object v2, p1

    .line 1412
    :goto_6
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1413
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 1414
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 615
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "tm"

    .line 1112
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1114
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 2

    .line 5226
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5229
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/internal/uc/wa/e;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/uc/wa/e;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    const-string v0, "stat"

    .line 227
    invoke-static {v0}, Lcom/uc/webview/export/internal/cd/a;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    .line 489
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 490
    monitor-exit p0

    return-void

    .line 493
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "SDKWaStat"

    const-string v1, "saveData"

    .line 494
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    iget-object v2, p0, Lcom/uc/webview/export/internal/uc/wa/a;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    :try_start_2
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 501
    iget-object v3, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 502
    iget-object v3, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 504
    :cond_2
    iget-object v3, p0, Lcom/uc/webview/export/internal/uc/wa/a;->d:Ljava/util/List;

    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/uc/webview/export/internal/uc/wa/a;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    iget-object v3, p0, Lcom/uc/webview/export/internal/uc/wa/a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 508
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/util/Map;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 508
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    .line 512
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 514
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ucwa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 3

    const-string v0, "process_private_data_dir_suffix"

    .line 567
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wa_upload_new.wa_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "wa_upload_new.wa"

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    const-string v0, "process_private_data_dir_suffix"

    .line 575
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "1"

    return-object v0
.end method

.method private j()[Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "@0"

    .line 752
    new-instance v2, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/uc/webview/export/internal/uc/wa/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    sget-boolean v3, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    const-string v4, "SDKWaStat"

    if-eqz v3, :cond_0

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getPVFromFile:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " exists:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    return-object v5

    .line 762
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 763
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 764
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 766
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 770
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v2, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 771
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_12

    .line 772
    sget-boolean v13, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v13, :cond_3

    .line 773
    invoke-static {v4, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_3
    invoke-static {v10}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 778
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v9

    sget v14, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    if-le v13, v14, :cond_4

    .line 779
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v0, :cond_12

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "upload data size("

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") more then "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 784
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v9, v13

    .line 785
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 786
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "@1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    goto/16 :goto_5

    :cond_6
    :goto_1
    const-string v13, "@k@"

    .line 787
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "@d@"

    .line 788
    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v13, :cond_5

    if-ltz v14, :cond_5

    add-int/lit8 v13, v13, 0x3

    .line 793
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v14, 0x3

    .line 794
    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "`"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 796
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, "="

    if-eqz v10, :cond_e

    :try_start_3
    const-string v10, "~"

    .line 797
    invoke-virtual {v13, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 798
    array-length v5, v10

    if-ne v5, v11, :cond_5

    aget-object v5, v10, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_5

    aget-object v5, v10, v12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_5

    .line 802
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/uc/wa/a$a;

    if-nez v5, :cond_8

    .line 804
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 805
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/16 v8, 0xa

    if-ne v5, v8, :cond_5

    goto/16 :goto_6

    .line 810
    :cond_7
    new-instance v5, Lcom/uc/webview/export/internal/uc/wa/a$a;

    const/4 v8, 0x0

    invoke-direct {v5, v1, v8}, Lcom/uc/webview/export/internal/uc/wa/a$a;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;B)V

    .line 811
    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_8
    array-length v8, v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_d

    aget-object v12, v14, v13

    .line 814
    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v0

    .line 815
    array-length v0, v12

    if-ne v0, v11, :cond_b

    const/4 v0, 0x1

    aget-object v17, v12, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v11, :cond_b

    move-object/from16 v19, v4

    const/4 v0, 0x1

    .line 816
    aget-object v4, v12, v0

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 817
    aget-object v11, v12, v0

    const-string v0, "#0"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 818
    iget-object v0, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    move/from16 v17, v8

    const/4 v11, 0x0

    aget-object v8, v12, v11

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 820
    iget-object v0, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    aget-object v8, v12, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 822
    :cond_9
    iget-object v8, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    const/4 v11, 0x0

    aget-object v12, v12, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    move/from16 v17, v8

    const/4 v0, 0x1

    .line 824
    aget-object v8, v12, v0

    const-string v0, "#1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 825
    iget-object v0, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    const/4 v8, 0x0

    aget-object v11, v12, v8

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    move-object/from16 v19, v4

    move/from16 v17, v8

    :cond_c
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    move-object/from16 v0, v18

    move-object/from16 v4, v19

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 829
    iget-object v0, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    const-string v4, "core_t"

    const/4 v5, 0x1

    aget-object v5, v10, v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 831
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_11

    .line 834
    new-instance v0, Ljava/util/HashMap;

    array-length v4, v14

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 835
    array-length v4, v14

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_10

    aget-object v8, v14, v5

    .line 836
    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 837
    array-length v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    const/4 v10, 0x1

    .line 838
    aget-object v12, v8, v10

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 839
    aget-object v8, v8, v11

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    const-string v4, "ev_ac"

    .line 842
    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v4, Lcom/uc/webview/export/internal/uc/wa/a$b;

    invoke-direct {v4, v1, v13, v0}, Lcom/uc/webview/export/internal/uc/wa/a$b;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v4, v19

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 847
    :cond_12
    :goto_6
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_14

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_13

    goto :goto_7

    .line 853
    :cond_13
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 854
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 855
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_9

    :cond_14
    :goto_7
    const/4 v0, 0x2

    .line 848
    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object v6, v0, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 853
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 854
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 855
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v5, v2

    move-object v2, v7

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v7

    const/4 v2, 0x0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v2, v7

    const/4 v5, 0x0

    goto :goto_8

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_a

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 851
    :goto_8
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 853
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 854
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 855
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :goto_9
    const/4 v2, 0x0

    return-object v2

    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v5

    .line 853
    :goto_a
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 854
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 855
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method private k()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "lt"

    const-string v2, "ev"

    .line 1010
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ct"

    const-string v2, "corepv"

    .line 1011
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 1013
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg"

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_pm"

    aput-object v4, v2, v3

    .line 2473
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "unknown"

    const-string v7, ""

    const-string v8, "[`|=]"

    if-eqz v4, :cond_0

    move-object v4, v6

    goto :goto_0

    .line 2476
    :cond_0
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2477
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v2, v5

    .line 1015
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_f"

    aput-object v4, v2, v3

    .line 2500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v9, 0x80000

    .line 2502
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v10, "1"

    const-string v11, "0"

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    .line 2503
    invoke-static {v9}, Lcom/uc/webview/export/internal/update/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v10

    goto :goto_2

    :cond_2
    :goto_1
    move-object v9, v11

    .line 2502
    :goto_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x1

    .line 2504
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v10

    goto :goto_3

    :cond_3
    move-object v9, v11

    :goto_3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v9

    const-string v12, "MULTI_CORE_TYPE"

    invoke-virtual {v9, v12}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v10

    goto :goto_4

    :cond_4
    move-object v9, v11

    :goto_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x2

    .line 2506
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v10

    goto :goto_5

    :cond_5
    move-object v9, v11

    :goto_5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x4

    .line 2507
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v10

    goto :goto_6

    :cond_6
    move-object v9, v11

    :goto_6
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x8

    .line 2508
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v10

    goto :goto_7

    :cond_7
    move-object v9, v11

    :goto_7
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x10

    .line 2509
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v10

    goto :goto_8

    :cond_8
    move-object v9, v11

    :goto_8
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x20

    .line 2510
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v10

    goto :goto_9

    :cond_9
    move-object v9, v11

    :goto_9
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x40

    .line 2511
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, v10

    goto :goto_a

    :cond_a
    move-object v9, v11

    :goto_a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x80

    .line 2512
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v9, v10

    goto :goto_b

    :cond_b
    move-object v9, v11

    :goto_b
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x100

    .line 2513
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v9, v10

    goto :goto_c

    :cond_c
    move-object v9, v11

    :goto_c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x200

    .line 2514
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v9, v10

    goto :goto_d

    :cond_d
    move-object v9, v11

    :goto_d
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x400

    .line 2515
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e

    move-object v9, v10

    goto :goto_e

    :cond_e
    move-object v9, v11

    :goto_e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x800

    .line 2516
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_f

    move-object v9, v10

    goto :goto_f

    :cond_f
    move-object v9, v11

    :goto_f
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x1000

    .line 2517
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    move-object v9, v10

    goto :goto_10

    :cond_10
    move-object v9, v11

    :goto_10
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x2000

    .line 2518
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, v10

    goto :goto_11

    :cond_11
    move-object v9, v11

    :goto_11
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x4000

    .line 2519
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_12

    move-object v9, v10

    goto :goto_12

    :cond_12
    move-object v9, v11

    :goto_12
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v12, 0x8000

    .line 2520
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_13

    move-object v9, v10

    goto :goto_13

    :cond_13
    move-object v9, v11

    :goto_13
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v12, 0x10000

    .line 2521
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_14

    move-object v9, v10

    goto :goto_14

    :cond_14
    move-object v9, v11

    :goto_14
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v12, 0x20000

    .line 2522
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_15

    move-object v9, v10

    goto :goto_15

    :cond_15
    move-object v9, v11

    :goto_15
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v12, 0x40000

    .line 2523
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_16

    move-object v9, v10

    goto :goto_16

    :cond_16
    move-object v9, v11

    :goto_16
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1016
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_bd"

    aput-object v4, v2, v3

    .line 3486
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_17

    .line 3489
    :cond_17
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3490
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_17
    aput-object v6, v2, v5

    .line 1017
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_osv"

    aput-object v4, v2, v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_prd"

    aput-object v4, v2, v3

    sget-object v4, Lcom/uc/webview/export/Build;->SDK_PRD:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_pfid"

    aput-object v4, v2, v3

    sget-object v4, Lcom/uc/webview/export/Build;->SDK_PROFILE_ID:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_cos"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "pro_sf"

    aput-object v4, v2, v3

    const-string v4, "process_private_data_dir_suffix"

    .line 1023
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v5

    .line 1022
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "uuid"

    aput-object v4, v2, v3

    .line 4198
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    const/4 v6, 0x4

    const-string v7, "UC_WA_STAT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4199
    invoke-direct {p0, v4}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1024
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "adapter_build_timing"

    .line 1025
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1026
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1027
    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "ab_sn"

    aput-object v6, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    const-string v2, "adapter_build_version"

    .line 1029
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1030
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1031
    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "ab_ve"

    aput-object v6, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_19
    sget-object v2, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1035
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_sdk_cv"

    aput-object v4, v2, v3

    sget-object v4, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_1a
    sget-object v2, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1038
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_ucm_cv"

    aput-object v4, v2, v3

    sget-object v4, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const-string v2, "st_el_b_uc_and_app"

    .line 1040
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1c

    .line 1042
    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "st_el"

    aput-object v6, v4, v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_1c
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sdk_vac"

    aput-object v4, v2, v3

    const-wide/32 v8, 0x100000

    .line 1046
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_18

    :cond_1d
    move-object v10, v11

    :goto_18
    aput-object v10, v2, v5

    .line 1045
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-object v2, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l$b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "ut_k"

    if-nez v4, :cond_1e

    .line 1050
    new-array v4, v1, [Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_1e
    const-string v2, "null"

    .line 1052
    filled-new-array {v6, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    :goto_19
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "data_dir"

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v2, p0, Lcom/uc/webview/export/internal/uc/wa/a;->k:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v7, v6, v3

    const-string v7, "getSharedPrefsFile"

    invoke-static {v2, v7, v4, v6}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_1f

    .line 1058
    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "sp_dir"

    aput-object v6, v4, v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_1f
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "thrct"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "app_st_o"

    .line 1062
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    .line 1064
    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "ini_op"

    aput-object v6, v4, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4934
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4935
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "thick"

    goto :goto_1a

    :cond_21
    const-string v4, "thin"

    :goto_1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4936
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v6, "bo_init_type"

    invoke-virtual {v4, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4938
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x5f

    if-nez v6, :cond_22

    .line 4939
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4941
    :cond_22
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v6, "gk_dec_exist"

    invoke-virtual {v4, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_24

    .line 4944
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "dec_exist"

    goto :goto_1b

    :cond_23
    const-string v4, "dec_not"

    :goto_1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4946
    :cond_24
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v6, "gk_upd_exist"

    invoke-virtual {v4, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_26

    .line 4949
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "upd_exist"

    goto :goto_1c

    :cond_25
    const-string v4, "upd_not"

    :goto_1c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4951
    :cond_26
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v6, "gk_quick_path"

    invoke-virtual {v4, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_28

    .line 4954
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "qpath"

    goto :goto_1d

    :cond_27
    const-string v4, "qpath_not"

    :goto_1d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4956
    :cond_28
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v6, "gk_quick_init"

    invoke-virtual {v4, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2a

    .line 4959
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "quick"

    goto :goto_1e

    :cond_29
    const-string v4, "quick_not"

    :goto_1e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4961
    :cond_2a
    sget-boolean v4, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    const-string v6, "SDKWaStat"

    if-eqz v4, :cond_2b

    .line 4962
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "getSetupType:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4964
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1067
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1068
    new-array v4, v1, [Ljava/lang/String;

    const-string v7, "setup_tp"

    aput-object v7, v4, v3

    aput-object v2, v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4973
    :cond_2c
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v2

    const-string v4, "gk_init_pre"

    invoke-virtual {v2, v4}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v2, 0x0

    .line 4979
    :goto_1f
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v7, "gk_preload_io"

    invoke-virtual {v4, v7}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    add-int/lit8 v2, v2, 0x2

    .line 4985
    :cond_2e
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v7, "gk_preload_so"

    invoke-virtual {v4, v7}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    add-int/lit8 v2, v2, 0x4

    .line 4991
    :cond_2f
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v4

    const-string v7, "gk_preload_cl"

    invoke-virtual {v4, v7}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v2, v2, 0x8

    .line 4996
    :cond_30
    sget-boolean v4, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v4, :cond_31

    .line 4997
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "getInitPreprocesses:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4999
    :cond_31
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1072
    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "ini_pre"

    aput-object v4, v1, v3

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 10

    .line 1127
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->j()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 1132
    aget-object v3, v0, v2

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x1

    .line 1133
    aget-object v0, v0, v4

    check-cast v0, Ljava/util/List;

    .line 1136
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1139
    invoke-direct {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->k()Ljava/util/List;

    move-result-object v6

    .line 1140
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1141
    aget-object v8, v7, v2

    aget-object v7, v7, v4

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1144
    :cond_1
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1145
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 1148
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1149
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1150
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v7, v7, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1152
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 1155
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/uc/wa/a$a;

    iget-object v4, v4, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1156
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 1158
    :cond_4
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1161
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/uc/wa/a$b;

    .line 1162
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1163
    iget-object v3, v3, Lcom/uc/webview/export/internal/uc/wa/a$b;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1164
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 1166
    :cond_6
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_7
    const-string v0, "items"

    .line 1168
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stat_size"

    .line 1171
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1173
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "SDKWaStat"

    const-string v3, "getJsonUploadData"

    .line 1175
    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 282
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 285
    invoke-virtual/range {v1 .. v6}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    .line 398
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 400
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v1, 0xa

    .line 402
    sget v4, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    add-int/2addr v1, v4

    .line 404
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/uc/webview/export/internal/uc/wa/a;->o:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/a;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 407
    :try_start_0
    iget-object v5, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 408
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    .line 410
    :cond_2
    iget-object v5, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/uc/wa/a$a;

    if-nez v5, :cond_3

    .line 412
    new-instance v5, Lcom/uc/webview/export/internal/uc/wa/a$a;

    invoke-direct {v5, p0, v2}, Lcom/uc/webview/export/internal/uc/wa/a$a;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;B)V

    .line 413
    iget-object v2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/util/Map;)V

    .line 414
    iget-object v2, p0, Lcom/uc/webview/export/internal/uc/wa/a;->n:Ljava/util/Map;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_3
    iget-object v1, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    const-string v2, "tm"

    iget-object v6, p0, Lcom/uc/webview/export/internal/uc/wa/a;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    if-eq p2, v3, :cond_4

    goto/16 :goto_1

    .line 427
    :cond_4
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_5

    const p3, 0x7fffffff

    .line 429
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p5

    sub-int/2addr p3, p5

    if-lt p3, p4, :cond_c

    :cond_5
    if-nez p2, :cond_6

    .line 433
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_sc"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 436
    :cond_6
    iget-object p3, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_sc"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 438
    iget-object p3, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_sc"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    if-ne p3, v0, :cond_8

    .line 443
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 445
    :cond_8
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 446
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 447
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 449
    :cond_9
    iget-object p3, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->b:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 419
    :cond_a
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_b

    .line 421
    iget-object p2, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 423
    :cond_b
    iget-object p3, v5, Lcom/uc/webview/export/internal/uc/wa/a$a;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_c
    :goto_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    .line 470
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "process_private_data_dir_suffix"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/internal/uc/wa/b;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/uc/wa/b;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x14

    .line 481
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "SDKWaStat"

    const-string v1, "saveData"

    .line 484
    invoke-static {v0, v1, p1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string v2, "SDKWaStatThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->l:Landroid/os/HandlerThread;

    .line 206
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/a;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->m:Landroid/os/Handler;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/a;->m:Landroid/os/Handler;

    return-object v0
.end method
