.class Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$2;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "ChildFaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision engine callback,  data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->access$100(Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;Ljava/lang/String;)V

    return-void
.end method
