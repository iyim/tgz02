.class public Lcom/alibaba/analytics/core/model/Log;
.super Lcom/alibaba/analytics/core/db/Entity;
.source "Log.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "log"
.end annotation


# static fields
.field public static final DEFAULT_PRIORITY:Ljava/lang/String; = "3"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private static final EVENTID_INTERVAL:I = 0xc3500
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public static final FIELD_NAME_PRIORITY:Ljava/lang/String; = "priority"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public static final FIELD_NAME_TIME:Ljava/lang/String; = "time"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UTLog"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field public _index:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "_index"
    .end annotation
.end field

.field private arg1:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private arg2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private arg3:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private args:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "content"
    .end annotation
.end field

.field public eventId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "eventId"
    .end annotation
.end field

.field private page:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public priority:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "priority"
    .end annotation
.end field

.field public streamId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "streamId"
    .end annotation
.end field

.field public time:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "time"
    .end annotation
.end field

.field private topicId:I
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    const-string v0, "3"

    .line 38
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/alibaba/analytics/core/model/Log;->topicId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    const-string v0, "3"

    .line 38
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/alibaba/analytics/core/model/Log;->topicId:I

    .line 89
    iput-object p2, p0, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->page:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/alibaba/analytics/core/model/Log;->arg1:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/alibaba/analytics/core/model/Log;->arg2:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/alibaba/analytics/core/model/Log;->arg3:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/alibaba/analytics/core/model/Log;->args:Ljava/util/Map;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/alibaba/analytics/core/model/Log;->createIndex()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/LogPriorityMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/LogPriorityMgr;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/analytics/core/logbuilder/LogPriorityMgr;->getLogLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/model/Log;->buildLogContent()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    const-string v0, "3"

    .line 38
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/alibaba/analytics/core/model/Log;->topicId:I

    .line 75
    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/model/Log;->buildStreamId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->streamId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/alibaba/analytics/core/model/Log;->createIndex()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    .line 80
    sget-object p1, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p4}, Lcom/alibaba/analytics/core/logbuilder/LogAssemble;->assemble(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/alibaba/analytics/core/model/Log;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method private addEventIdInterval(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method private buildStreamId(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-ltz v1, :cond_1

    const-string v2, ","

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private createIndex()Ljava/lang/String;
    .locals 6

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getSessionTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    const-string v2, "2202"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 199
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->logIndexIncrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->m2202LogIndexIncrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%s%06d,2202_%06d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->logIndexIncrementAndGet()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s%06d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildLogContent()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/model/Log;->page:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/analytics/core/model/Log;->arg1:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/analytics/core/model/Log;->arg2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/analytics/core/model/Log;->arg3:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/analytics/core/model/Log;->args:Ljava/util/Map;

    iget-object v7, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/analytics/core/model/Log;->time:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/alibaba/analytics/core/logbuilder/LogAssemble;->assemble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/alibaba/analytics/core/model/Log;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public getCipherContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/model/Log;->content:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Base64;->decode([BI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {v1}, Lcom/alibaba/analytics/utils/RC4;->rc4([B)[B

    move-result-object v1

    .line 110
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getPlus80WLogContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getTopicId()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/alibaba/analytics/core/model/Log;->topicId:I

    return v0
.end method

.method public setCipherContent(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/alibaba/analytics/core/model/Log;->content:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/analytics/utils/RC4;->rc4([B)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/alibaba/analytics/utils/Base64;->encode([BI)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/analytics/core/model/Log;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTopicId(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/alibaba/analytics/core/model/Log;->topicId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log [eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/model/Log;->_index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
