.class public Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;
.super Ljava/lang/Object;
.source "RomControl.java"


# static fields
.field public static final ROM_APP_EXIT:Ljava/lang/String; = "ROM_APP_EXIT"

.field public static final ROM_APP_LAUNCH:Ljava/lang/String; = "ROM_APP_LAUNCH"

.field public static final ROM_APP_UNINSTALL:Ljava/lang/String; = "ROM_APP_UNINSTALL"

.field public static final ROM_BROWSER_URL:Ljava/lang/String; = "ROM_BROWSER_URL"

.field public static final ROM_CALL:Ljava/lang/String; = "ROM_CALL"

.field public static final ROM_CANCEL_SLEEP_DEVICE:Ljava/lang/String; = "ROM_CANCEL_SLEEP_DEVICE"

.field public static final ROM_CLOSE_DEVICE:Ljava/lang/String; = "ROM_CLOSE_DEVICE"

.field public static final ROM_CLOSE_MODEL_MUTE:Ljava/lang/String; = "ROM_CLOSE_MODEL_MUTE"

.field public static final ROM_DECREASE_VOLUMNE:Ljava/lang/String; = "ROM_DECREASE_VOLUMNE"

.field public static final ROM_INCREASE_VOLUMNE:Ljava/lang/String; = "ROM_INCREASE_VOLUMNE"

.field public static final ROM_MAX_VOLUMNE:Ljava/lang/String; = "ROM_MAX_VOLUMNE"

.field public static final ROM_MIN_VOLUMNE:Ljava/lang/String; = "ROM_MIN_VOLUMNE"

.field public static final ROM_OPEN_DEVICE:Ljava/lang/String; = "ROM_OPEN_DEVICE"

.field public static final ROM_OPEN_MODEL_MUTE:Ljava/lang/String; = "ROM_OPEN_MODEL_MUTE"

.field public static final ROM_SEND_SMS:Ljava/lang/String; = "ROM_SEND_SMS"

.field public static final ROM_SET_VOLUMNE:Ljava/lang/String; = "ROM_SET_VOLUMNE"

.field public static final ROM_SLEEP_DEVICE:Ljava/lang/String; = "ROM_SLEEP_DEVICE"

.field public static final ROM_VIRTUAL_KEY_ENENT:Ljava/lang/String; = "ROM_VIRTUAL_KEY_EVENT"

.field public static final TAG:Ljava/lang/String; = "RomControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterControl . type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RomControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v2, ""

    if-eqz p2, :cond_1

    .line 37
    array-length v3, p2

    if-lez v3, :cond_1

    .line 38
    array-length v3, p2

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, p2, v2

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; p:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 42
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ROM_APP_LAUNCH"

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 45
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/String;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/rom/RomApp;->lanchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "ROM_APP_UNINSTALL"

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/rom/RomApp;->uninstallApp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "ROM_OPEN_MODEL_MUTE"

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    invoke-static {p0, v2, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMute(Landroid/content/Context;ZZ)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "ROM_CLOSE_MODEL_MUTE"

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    invoke-static {p0, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMute(Landroid/content/Context;ZZ)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "ROM_DECREASE_VOLUMNE"

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->decreaseSrtreamVolumn(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "ROM_INCREASE_VOLUMNE"

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->increaseStreamVolumn(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "ROM_SET_VOLUMNE"

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setStreamVolumn(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "ROM_MAX_VOLUMNE"

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 59
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setStreamVolumn(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_9
    const-string v1, "ROM_MIN_VOLUMNE"

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 61
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setStreamVolumn(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_a
    const-string v1, "ROM_VIRTUAL_KEY_EVENT"

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string p2, "ROM_CLOSE_DEVICE"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "shutdown"

    if-eqz p2, :cond_c

    .line 65
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string p2, "ROM_OPEN_DEVICE"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "cancelsleep"

    if-eqz p2, :cond_d

    .line 67
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string p2, "ROM_SLEEP_DEVICE"

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 69
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const-string p2, "ROM_CANCEL_SLEEP_DEVICE"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 71
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    :goto_1
    return-void
.end method
