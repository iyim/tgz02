.class Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$2;
.super Ljava/lang/Object;
.source "BTManagerApi.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->closeA2dpSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected==>profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBTManagerSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "closeA2dpSource==>have a2dp source"

    .line 181
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$202(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 183
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$200()Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 185
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$300(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;Landroid/bluetooth/BluetoothDevice;)V

    .line 188
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$200()Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected==>profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBTManagerSetting"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 164
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$200()Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$200()Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    const/4 p1, 0x0

    .line 168
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->access$202(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
