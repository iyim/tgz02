.class Lcom/alibaba/appmonitor/event/EventRepo$1;
.super Ljava/lang/Object;
.source "EventRepo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/appmonitor/event/EventRepo;->uploadEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/appmonitor/event/EventRepo;

.field final synthetic val$eventMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/appmonitor/event/EventRepo;Ljava/util/Map;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/alibaba/appmonitor/event/EventRepo$1;->this$0:Lcom/alibaba/appmonitor/event/EventRepo;

    iput-object p2, p0, Lcom/alibaba/appmonitor/event/EventRepo$1;->val$eventMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/EventRepo$1;->val$eventMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/appmonitor/util/UTUtil;->uploadEvent(Ljava/util/Map;)V

    return-void
.end method
