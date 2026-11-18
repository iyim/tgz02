.class Lunet/org/chromium/base/library_loader/HomoDisablerLoader;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 p0, 0x1

    .line 89
    :try_start_0
    new-array p0, p0, [C

    .line 90
    invoke-virtual {v0, p0}, Ljava/io/FileReader;->read([C)I

    .line 91
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    throw p0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 80
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw p0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/homodisablerstarted"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    const-string v2, "1"

    if-nez p0, :cond_0

    .line 1066
    invoke-static {v0, v2}, Lunet/org/chromium/base/library_loader/HomoDisablerLoader;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_0
    invoke-static {v0}, Lunet/org/chromium/base/library_loader/HomoDisablerLoader;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 1070
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "2"

    .line 1071
    invoke-static {v0, p0}, Lunet/org/chromium/base/library_loader/HomoDisablerLoader;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string p0, "homodisabler"

    .line 1054
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Lunet/org/chromium/base/library_loader/HomoDisablerLoader;->startHomoDisable()V

    const-wide/16 v1, 0x1388

    .line 1057
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1059
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1098
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1099
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method private static native startHomoDisable()V
.end method
