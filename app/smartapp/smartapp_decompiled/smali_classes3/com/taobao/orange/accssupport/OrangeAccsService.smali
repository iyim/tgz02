.class public Lcom/taobao/orange/accssupport/OrangeAccsService;
.super Lcom/taobao/accs/base/TaoBaseService;
.source "OrangeAccsService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeAccsService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/accs/base/TaoBaseService;-><init>()V

    return-void
.end method

.method public static handleAccsUpdate([B)V
    .locals 1

    .line 41
    new-instance v0, Lcom/taobao/orange/accssupport/OrangeAccsService$1;

    invoke-direct {v0, p0}, Lcom/taobao/orange/accssupport/OrangeAccsService$1;-><init>([B)V

    invoke-static {v0}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 1

    const-string p5, "orange"

    .line 18
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p5, 0x0

    const-string v0, "dataId"

    aput-object v0, p1, p5

    const/4 p5, 0x1

    aput-object p3, p1, p5

    const/4 p3, 0x2

    const-string p5, "userId"

    aput-object p5, p1, p3

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "OrangeAccsService"

    const-string p3, "onData"

    invoke-static {p2, p3, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {p4}, Lcom/taobao/orange/accssupport/OrangeAccsService;->handleAccsUpdate([B)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method
