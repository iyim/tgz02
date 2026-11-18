.class public Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;
.super Ljava/lang/Object;
.source "ReportEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$EVENT_TYPE;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.content.asyncEventUpload"

.field public static final EVENT_NAME_OPEN_APK:Ljava/lang/String; = "turandot.open.apk"

.field public static final EVENT_NAME_OPEN_SMALLPROGRAM:Ljava/lang/String; = "turandot.open.webapps"

.field private static final SYNC_API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.content.syncEventUpload"

.field private static final TAG:Ljava/lang/String; = "ReportEvent"

.field private static mInstance:Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;->mInstance:Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;->mInstance:Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportEvent eventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent$1;-><init>(Lcom/alibaba/ailabs/genie/router/mtop/ReportEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
