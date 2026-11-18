.class public Lc/b/a/b/o/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Z = false

.field public static f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lc/b/a/b/k/b;)V
    .locals 3

    new-instance v0, Lc/b/a/b/k/c;

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    invoke-direct {v0, v1}, Lc/b/a/b/k/c;-><init>(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;)V

    .line 1
    iget-object v1, v0, Lc/b/a/b/k/c;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    .line 3
    sget-object v1, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 4
    iget-object v2, v1, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/b/a/b/o/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lc/b/a/b/k/b;->a()V

    .line 6
    sget v1, Lc/b/a/b/o/g;->f:I

    sget v2, Lc/b/a/b/o/g;->e:I

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    sget v2, Lc/b/a/b/o/g;->d:I

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    sget v2, Lc/b/a/b/o/g;->c:I

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appStatus"

    invoke-virtual {p0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 7
    sget v1, Lc/b/a/b/o/g;->g:I

    sget v2, Lc/b/a/b/o/g;->h:I

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    sget v2, Lc/b/a/b/o/g;->i:I

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    .line 8
    sget v2, Lc/b/a/b/o/g;->M:I

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sysStatus"

    invoke-virtual {p0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 10
    sget-object p0, Lc/b/a/b/o/g;->Q:Ljava/lang/String;

    .line 11
    sget-object v1, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 12
    iget-object v1, v1, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p0, v1}, Lc/b/a/b/k/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lc/b/a/b/a$a;->a:Lc/b/a/b/a;

    .line 15
    invoke-virtual {p0, v0}, Lc/b/a/b/a;->a(Lc/b/a/b/k/c;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lc/b/a/b/o/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    const-string v1, "com.aliwork.dm.rom.version"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.dingtalk.build.version"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ro.genie.uuid"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "ro.aliyun.clouduuid"

    :goto_1
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lc/b/a/b/o/d;

    invoke-static {v1, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2
    sput-object v0, Lc/b/a/b/o/d;->b:Ljava/lang/String;

    sget-object v0, Lc/b/a/b/o/d;->b:Ljava/lang/String;

    return-object v0
.end method
