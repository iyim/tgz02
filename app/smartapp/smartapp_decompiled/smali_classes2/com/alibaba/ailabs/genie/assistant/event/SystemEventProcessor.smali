.class public Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;
.super Ljava/lang/Object;
.source "SystemEventProcessor.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final BIT_OFFSET:I = 0x2

.field private static final MSG_simulateMouseEvent:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AGUI_GESTURE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mContext:Landroid/content/Context;

    .line 35
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 37
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I

    .line 38
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AGUI_GESTURE"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private simulateClickEvent(II)V
    .locals 13

    .line 47
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v5, 0x0

    int-to-float v11, p1

    int-to-float v12, p2

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    move v6, v11

    move v7, v12

    .line 50
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    move v6, v11

    move v7, v12

    .line 53
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const-string v0, "AGUI_GESTURE"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click (x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",y = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private simulateMouseEvent(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, ",y = "

    .line 64
    :try_start_0
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x1e

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    add-long v18, v16, v4

    const/4 v12, 0x0

    .line 71
    iget v8, v0, Landroid/graphics/Point;->x:I

    int-to-float v13, v8

    iget v8, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v8

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v16

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const-string v8, "AGUI_GESTURE"

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "src (x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "), end (x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    int-to-long v8, v2

    cmp-long v10, v8, v6

    if-gez v10, :cond_1

    mul-long v8, v8, v4

    .line 80
    div-long/2addr v8, v6

    .line 82
    iget v10, v1, Landroid/graphics/Point;->x:I

    iget v11, v0, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v10, v11

    mul-int v10, v10, v2

    int-to-double v10, v10

    long-to-double v12, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    :try_start_1
    iget v14, v0, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v14

    double-to-int v10, v10

    .line 84
    :try_start_2
    iget v11, v0, Landroid/graphics/Point;->x:I

    iget v14, v1, Landroid/graphics/Point;->x:I

    if-ne v11, v14, :cond_0

    .line 85
    iget v11, v1, Landroid/graphics/Point;->y:I

    iget v14, v0, Landroid/graphics/Point;->y:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    sub-int/2addr v11, v14

    mul-int v11, v11, v2

    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v12

    :try_start_3
    iget v11, v0, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v11

    double-to-int v11, v14

    goto :goto_1

    .line 87
    :cond_0
    :try_start_4
    iget v11, v1, Landroid/graphics/Point;->y:I

    iget v12, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/graphics/Point;->x:I

    sub-int v12, v10, v12

    mul-int v11, v11, v12

    int-to-double v11, v11

    iget v13, v1, Landroid/graphics/Point;->x:I

    iget v14, v0, Landroid/graphics/Point;->x:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    sub-int/2addr v13, v14

    int-to-double v13, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    :try_start_5
    iget v13, v0, Landroid/graphics/Point;->y:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    double-to-int v11, v11

    :goto_1
    add-long v12, v16, v8

    const/4 v14, 0x2

    int-to-float v15, v10

    int-to-float v10, v11

    const/16 v20, 0x0

    move-wide/from16 v8, v16

    move/from16 v21, v10

    move-wide v10, v12

    move v12, v14

    move v13, v15

    move/from16 v14, v21

    move/from16 v15, v20

    .line 90
    :try_start_6
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x1

    .line 95
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v13, v0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v14, v0

    const/4 v15, 0x0

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    .line 129
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getCode()I

    move-result p1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_1

    :try_start_0
    const-string p1, "AGUI_GESTURE"

    const-string v0, "back"

    .line 134
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance p1, Landroid/app/Instrumentation;

    invoke-direct {p1}, Landroid/app/Instrumentation;-><init>()V

    const/4 v0, 0x4

    .line 136
    invoke-virtual {p1, v0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x263

    if-ne p1, v2, :cond_2

    .line 144
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v0, "x"

    .line 145
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v0, v2

    :try_start_2
    const-string v2, "y"

    .line 146
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int p1, v2

    .line 148
    :try_start_3
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->simulateClickEvent(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1

    .line 155
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 156
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    .line 175
    :pswitch_1
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I

    shr-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 176
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I

    shr-int/lit8 v3, p1, 0x2

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 177
    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 182
    :pswitch_2
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I

    shr-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 183
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I

    shr-int/lit8 v3, p1, 0x2

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 184
    iget v3, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 168
    :pswitch_3
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I

    shr-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 169
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I

    shr-int/lit8 v3, p1, 0x2

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 170
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 161
    :pswitch_4
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHeight:I

    shr-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 162
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mWidth:I

    shr-int/lit8 v3, p1, 0x2

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 163
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 192
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->simulateMouseEvent(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AGUI_GESTURE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x258

    if-lt v0, v3, :cond_0

    const/16 v3, 0x320

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0xcc

    if-ne v0, v3, :cond_2

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/event/SystemEventProcessor;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x1

    .line 120
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;-><init>()V

    .line 121
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->setHandled(Z)V

    return-object p1
.end method
