.class public Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;
.super Ljava/lang/Object;
.source "DXControlEvent.java"


# instance fields
.field public args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public eventName:Ljava/lang/String;

.field public sender:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->eventName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->eventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->sender:Ljava/lang/Object;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->sender:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public getSender()Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->sender:Ljava/lang/Object;

    return-object v0
.end method

.method public setSender(Ljava/lang/Object;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->sender:Ljava/lang/Object;

    return-void
.end method
