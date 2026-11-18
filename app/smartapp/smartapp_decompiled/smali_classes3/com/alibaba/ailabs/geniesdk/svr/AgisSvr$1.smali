.class Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "AgisSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

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

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgisSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "business"

    .line 82
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "face_id"

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "type"

    .line 84
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    .line 85
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "detect"

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->access$100(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;->callback(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;->callback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
