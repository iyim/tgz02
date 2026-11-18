.class public final Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final CHANNEL_ONE_ID:Ljava/lang/String; = "smartapp.basedomain"

.field private static final FOREGROUND_ID:I = 0x112

.field private static final NOTIFY_ID:I = 0x111


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 82
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 83
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "recommendation"

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x108005b

    .line 92
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 94
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationO(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 57
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "smartapp.basedomain"

    const/4 v2, 0x3

    invoke-direct {v0, v1, p2, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 59
    invoke-virtual {v0, p3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 70
    new-instance p1, Landroid/app/Notification$Builder;

    invoke-direct {p1, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "recommendation"

    .line 71
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const p2, 0x108005b

    .line 75
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 77
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "notification"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x111

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;->getNotificationO(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v7, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;->getNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v7, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method public static startForeground(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "notification"

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/NotificationManager;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;->getNotificationO(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;->getNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    :goto_0
    const/4 p2, 0x2

    .line 41
    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 42
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 43
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Landroid/app/Notification;->flags:I

    const/16 p2, 0x112

    .line 44
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public static stopForegound(Landroid/app/Service;)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
