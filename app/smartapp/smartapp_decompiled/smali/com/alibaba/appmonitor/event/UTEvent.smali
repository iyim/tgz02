.class public Lcom/alibaba/appmonitor/event/UTEvent;
.super Ljava/lang/Object;
.source "UTEvent.java"

# interfaces
.implements Lcom/alibaba/appmonitor/pool/Reusable;


# instance fields
.field public arg1:Ljava/lang/String;

.field public arg2:Ljava/lang/String;

.field public arg3:Ljava/lang/String;

.field public args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public eventId:I

.field public page:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clean()V
    .locals 2

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/alibaba/appmonitor/event/UTEvent;->page:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/alibaba/appmonitor/event/UTEvent;->eventId:I

    .line 26
    iput-object v0, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg1:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg2:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg3:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    :cond_0
    return-void
.end method
