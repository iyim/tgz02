.class Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;
.super Ljava/lang/Object;
.source "AsrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/service/AsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientInfo"
.end annotation


# instance fields
.field public commandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Landroid/os/Handler;

.field public hostFlag:Ljava/lang/String;

.field public listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager;Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    .line 369
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->commandList:Ljava/util/ArrayList;

    .line 370
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->handler:Landroid/os/Handler;

    .line 371
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->hostFlag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo{listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commandList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->commandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostFlag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->hostFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
