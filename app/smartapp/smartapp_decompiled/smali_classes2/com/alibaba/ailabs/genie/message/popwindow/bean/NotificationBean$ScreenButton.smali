.class public Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;
.super Ljava/lang/Object;
.source "NotificationBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenButton"
.end annotation


# instance fields
.field private actionValue:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionValue()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->actionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActionValue(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->actionValue:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->title:Ljava/lang/String;

    return-void
.end method
