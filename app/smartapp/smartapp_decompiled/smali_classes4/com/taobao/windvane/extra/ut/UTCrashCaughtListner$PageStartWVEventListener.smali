.class public Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;
.super Ljava/lang/Object;
.source "UTCrashCaughtListner.java"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageStartWVEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;


# direct methods
.method public constructor <init>(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 0

    const/16 p3, 0x3e9

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "0"

    .line 55
    sput-object p1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "1"

    .line 50
    sput-object p1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 35
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 36
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 37
    iget-object p2, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {p2}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 38
    iget-object p2, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {p2}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/16 p3, 0x9

    if-le p2, p3, :cond_1

    .line 39
    iget-object p2, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {p2}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {p2}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 43
    :cond_2
    iget-object p2, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {p2, p1}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$102(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "current Url : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WV_URL_CHANGE"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "2"

    .line 46
    sput-object p1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
