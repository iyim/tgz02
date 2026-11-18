.class public Lcom/ta/audid/store/UtdidContent;
.super Lcom/ta/audid/db/Entity;
.source "UtdidContent.java"


# annotations
.annotation runtime Lcom/ta/audid/db/annotation/TableName;
    value = "utdid"
.end annotation


# static fields
.field public static final FIELD_NAME_PRIORITY:Ljava/lang/String; = "priority"
    .annotation runtime Lcom/ta/audid/db/annotation/Ingore;
    .end annotation
.end field

.field public static final FIELD_NAME_TIME:Ljava/lang/String; = "time"
    .annotation runtime Lcom/ta/audid/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/ta/audid/db/annotation/Column;
        value = "content"
    .end annotation
.end field

.field public priority:Ljava/lang/String;
    .annotation runtime Lcom/ta/audid/db/annotation/Column;
        value = "priority"
    .end annotation
.end field

.field public time:Ljava/lang/String;
    .annotation runtime Lcom/ta/audid/db/annotation/Column;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/ta/audid/db/Entity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->time:Ljava/lang/String;

    const-string v1, "3"

    .line 23
    iput-object v1, p0, Lcom/ta/audid/store/UtdidContent;->priority:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/ta/audid/db/Entity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->time:Ljava/lang/String;

    const-string v1, "3"

    .line 23
    iput-object v1, p0, Lcom/ta/audid/store/UtdidContent;->priority:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->content:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ta/audid/store/UtdidContent;->priority:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->time:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/ta/audid/store/UtdidContent;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/ta/audid/db/Entity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->time:Ljava/lang/String;

    const-string v1, "3"

    .line 23
    iput-object v1, p0, Lcom/ta/audid/store/UtdidContent;->priority:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ta/audid/store/UtdidContent;->content:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/ta/audid/store/UtdidContent;->priority:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/audid/store/UtdidContent;->time:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p2}, Lcom/ta/audid/store/UtdidContent;->setContent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ta/audid/store/UtdidContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedContent()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ta/audid/store/UtdidContent;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/audid/store/UtdidContentUtil;->getDecodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/ta/audid/store/UtdidContentUtil;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/audid/store/UtdidContent;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
