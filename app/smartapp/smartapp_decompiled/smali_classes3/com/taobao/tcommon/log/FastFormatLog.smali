.class public abstract Lcom/taobao/tcommon/log/FastFormatLog;
.super Ljava/lang/Object;
.source "FastFormatLog.java"

# interfaces
.implements Lcom/taobao/tcommon/log/FormatLog;


# static fields
.field public static final COMMON_TOTAL_LENGTH:I = 0xfa


# instance fields
.field private final FORMAT_LOCK:Ljava/lang/Object;

.field private mFormatter:Ljava/util/Formatter;

.field private mSB:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/tcommon/log/FastFormatLog;->FORMAT_LOCK:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected varargs fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/taobao/tcommon/log/FastFormatLog;->FORMAT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xfa

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mSB:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mFormatter:Ljava/util/Formatter;

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mFormatter:Ljava/util/Formatter;

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 23
    iget-object p1, p0, Lcom/taobao/tcommon/log/FastFormatLog;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
