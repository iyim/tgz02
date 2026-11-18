.class public Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;
.super Ljava/lang/Object;
.source "UTManager.java"


# static fields
.field private static APP_KEY:Ljava/lang/String; = "26062527"

.field private static final TAG:Ljava/lang/String; = "UTManager"

.field private static pageEnterTime:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->APP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "extend_info"

    .line 48
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "click_type"

    .line 50
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "click"

    const/16 v1, 0x835

    .line 55
    invoke-static {p0, v0, p1, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->sendUTEvent(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static customHit(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x4e1f

    .line 42
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->sendUTEvent(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exposure"

    const/16 v1, 0x899

    .line 59
    invoke-static {p0, v0, p1, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->sendUTEvent(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static pageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;ZLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->pageEnterTime:J

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->pageEnterTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "exit"

    :goto_1
    if-eqz p1, :cond_3

    const/16 p1, 0x7d1

    goto :goto_2

    :cond_3
    const/16 p1, 0x3f2

    :goto_2
    invoke-static {p0, v0, p2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->sendUTEvent(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method private static sendUTEvent(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 63
    sget-boolean v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
