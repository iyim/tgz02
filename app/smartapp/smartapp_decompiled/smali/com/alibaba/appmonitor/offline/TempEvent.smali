.class public Lcom/alibaba/appmonitor/offline/TempEvent;
.super Lcom/alibaba/analytics/core/db/Entity;
.source "TempEvent.java"


# static fields
.field public static final TAG_ACCESS:Ljava/lang/String; = "access"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public static final TAG_ACCESSSUBTYPE:Ljava/lang/String; = "sub_access"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public static final TAG_COMMITTIME:Ljava/lang/String; = "commit_time"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public static final TAG_MODULE:Ljava/lang/String; = "module"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public static final TAG_MONITOR_POINT:Ljava/lang/String; = "monitor_point"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field public access:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "access"
    .end annotation
.end field

.field public accessSubType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "sub_access"
    .end annotation
.end field

.field public commitTime:J
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "commit_time"
    .end annotation
.end field

.field public module:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "module"
    .end annotation
.end field

.field public monitorPoint:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "monitor_point"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alibaba/appmonitor/offline/TempEvent;->module:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/alibaba/appmonitor/offline/TempEvent;->monitorPoint:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/appmonitor/offline/TempEvent;->commitTime:J

    .line 41
    iput-object p3, p0, Lcom/alibaba/appmonitor/offline/TempEvent;->access:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/alibaba/appmonitor/offline/TempEvent;->accessSubType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TempEvent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
