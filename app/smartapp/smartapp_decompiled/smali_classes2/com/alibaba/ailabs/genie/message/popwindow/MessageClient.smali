.class public Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;
.super Ljava/lang/Object;
.source "MessageClient.java"


# static fields
.field private static final PAGE_NAME:Ljava/lang/String; = "push_message"

.field private static final Send_Key_Delay:I = 0x1f4

.field private static final Send_Key_Power_Delay:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "MessageClient"


# instance fields
.field private closeWindowRunnable:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field private currentPlayAnimator:Landroid/animation/AnimatorSet;

.field private currentView:Landroid/view/View;

.field private dismissHandler:Landroid/os/Handler;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private recordY:F

.field serviceConnection:Landroid/content/ServiceConnection;

.field private unbind:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->unbind:Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->map:Ljava/util/Map;

    .line 321
    new-instance v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$4;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    .line 70
    new-instance p1, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    .line 87
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->initWindowParams()V

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dealMessage(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dealCommonMsg(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeScreenSaver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Ljava/util/Map;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/view/WindowManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->unbind:Z

    return p0
.end method

.method private addWindow(Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;Ljava/lang/String;I)V
    .locals 4

    .line 207
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getScreenButtons()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getSourceBizName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setSourceBizName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setSubTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setType(Lcom/alibaba/ailabs/genie/message/utils/NoticationType;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    goto :goto_0

    .line 215
    :cond_0
    sget-object v2, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->DOUBLE_LINES_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setType(Lcom/alibaba/ailabs/genie/message/utils/NoticationType;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    :goto_0
    const/4 v2, 0x0

    .line 217
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/message/popwindow/ListUtils;->safeGetItem(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setLeftOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    :cond_1
    const/4 v3, 0x1

    .line 221
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/message/popwindow/ListUtils;->safeGetItem(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setRightOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setLogoUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    .line 226
    new-instance p1, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;

    invoke-direct {p1, p0, v2, v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->setListener(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->create()Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    move-result-object p1

    .line 249
    new-instance v1, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentPlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 281
    :cond_3
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    .line 282
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 283
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 284
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->playShowAnimation()V

    .line 286
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->checkTimeData(Ljava/lang/String;I)V

    .line 287
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->map:Ljava/util/Map;

    const-string p2, "push_message"

    const-string p3, "a1z3lt.b52382798"

    invoke-static {p2, p3, p1}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->pageUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private checkTimeData(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    const-string v0, "SECONDS"

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "MILLSECONDS"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "MINUTES"

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "HOURS"

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v0, "DAY"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 312
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    mul-int/lit8 p2, p2, 0x18

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private closeScreenSaver()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    const/16 v1, 0xe0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->sendVirtualKey(Landroid/content/Context;I)V

    return-void
.end method

.method private dealCommonMsg(Ljava/lang/String;)V
    .locals 6

    const-string v0, "MessageClient"

    const-string v1, "dealCommonMsg"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->getMessageType()Ljava/lang/String;

    move-result-object v3

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "genius.sys.msg.standard.bigImg"

    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bigImg"

    .line 131
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->needShowMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    const-class v5, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "time"

    .line 134
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->getMsgShowTimeValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "unit"

    .line 135
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->getMsgShowTimeUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->getPayload()Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "url"

    .line 138
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uri"

    .line 139
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->getActionURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "payload"

    .line 140
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private dealMessage(Ljava/lang/String;)V
    .locals 5

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->isListenMode()Z

    move-result v0

    const-string v1, "MessageClient"

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->isInvalidShowActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-class v0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 168
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getDisplayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getDisplayType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BIG_IMG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getCurrentScene()Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/message/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->needShowMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    const-class v3, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getMsgShowTimeValue()I

    move-result v2

    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getMsgShowTimeUnit()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unit"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "payload"

    .line 178
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 183
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->closeWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->map:Ljava/util/Map;

    const-string v2, "message_info"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    move-result-object p1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getMsgShowTimeUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->getMsgShowTimeValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->addWindow(Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "onMessage:\u6570\u636e\u89e3\u6790 notificationBean\u4e3a\u7a7a"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_2
    const-string p1, "dealMessage: \u901a\u8bdd\u548c\u542c\u6a21\u5f0f\u4e0d\u5c55\u793a\u5f39\u7a97"

    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTopActivity()Ljava/lang/String;
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity_name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initWindowParams()V
    .locals 2

    .line 92
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->params:Landroid/view/WindowManager$LayoutParams;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x80028

    .line 95
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 96
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x31

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private isInvalidShowActivity()Z
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 195
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MessageClient"

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInvalidShowActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 198
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v3, "PstnCallInActivity"

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PstnCallOutActivity"

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VoipCallInActivity"

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VoipCallOutActivity"

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private needShowMessage()Z
    .locals 5

    .line 469
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->getTopActivity()Ljava/lang/String;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/alibaba/ailabs/genie/message/Constant;->activityList:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 472
    sget-object v4, Lcom/alibaba/ailabs/genie/message/Constant;->activityList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "MessageClient"

    const-string v1, "find---"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static sendVirtualKey(Landroid/content/Context;I)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 343
    new-instance v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;-><init>(Landroid/content/Context;I)V

    .line 362
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->start()V

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 4

    const-string v0, "MessageClient"

    const-string v1, "bindservice"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->unbind:Z

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.messagecenter.ACTION_NOTIFY"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    new-instance v1, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 460
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->playDismissAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 110
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 111
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const-string p1, ""

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public isListenMode()Z
    .locals 3

    const-string v0, "persist.sys.is.listen.mode"

    .line 103
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isListenMode. listenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public playDismissAnimation()V
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 369
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "translationY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 370
    new-instance v3, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$6;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$6;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    .line 376
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 377
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 379
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x168

    .line 380
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    new-instance v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 405
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentPlayAnimator:Landroid/animation/AnimatorSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3e600000    # -20.0f
    .end array-data
.end method

.method public playShowAnimation()V
    .locals 6

    .line 409
    new-instance v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$8;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    .line 415
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 416
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentView:Landroid/view/View;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "translationY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 417
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 420
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x168

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 422
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 423
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->currentPlayAnimator:Landroid/animation/AnimatorSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data
.end method

.method public unbindService()V
    .locals 2

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->unbind:Z

    .line 465
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
