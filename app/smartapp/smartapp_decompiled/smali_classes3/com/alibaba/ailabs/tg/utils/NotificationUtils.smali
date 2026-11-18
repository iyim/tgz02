.class public Lcom/alibaba/ailabs/tg/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static notification(Landroid/content/Context;ILandroid/support/v7/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/NotificationUtils;->notification(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v7/app/NotificationCompat$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static notification(Landroid/content/Context;Ljava/lang/String;ILandroid/support/v7/app/NotificationCompat$Builder;)V
    .locals 0

    const-string p1, "notification"

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p3}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
