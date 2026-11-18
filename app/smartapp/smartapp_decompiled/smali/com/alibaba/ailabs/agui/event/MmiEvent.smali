.class public Lcom/alibaba/ailabs/agui/event/MmiEvent;
.super Ljava/lang/Object;
.source "MmiEvent.java"


# static fields
.field public static final EVENT_CODE_BACK:I = 0xcc

.field public static final EVENT_CODE_CANCEL:I = 0xca

.field public static final EVENT_CODE_CLICK:I = 0x263

.field public static final EVENT_CODE_DIRECTION_DOWN:I = 0x25c

.field public static final EVENT_CODE_DIRECTION_LEFT:I = 0x259

.field public static final EVENT_CODE_DIRECTION_MAX:I = 0x320

.field public static final EVENT_CODE_DIRECTION_MIN:I = 0x258

.field public static final EVENT_CODE_DIRECTION_NEXT:I = 0x25e

.field public static final EVENT_CODE_DIRECTION_PAGE_DOWN:I = 0x262

.field public static final EVENT_CODE_DIRECTION_PAGE_LEFT:I = 0x25f

.field public static final EVENT_CODE_DIRECTION_PAGE_RIGHT:I = 0x260

.field public static final EVENT_CODE_DIRECTION_PAGE_UP:I = 0x261

.field public static final EVENT_CODE_DIRECTION_PREVIOUS:I = 0x25d

.field public static final EVENT_CODE_DIRECTION_RIGHT:I = 0x25a

.field public static final EVENT_CODE_DIRECTION_UP:I = 0x25b

.field public static final EVENT_CODE_DISTANCE_RESULT:I = 0x111d5

.field public static final EVENT_CODE_EXIT:I = 0xcb

.field public static final EVENT_CODE_FN_COLLECTION:I = 0x195

.field public static final EVENT_CODE_FN_HOME:I = 0x193

.field public static final EVENT_CODE_FN_MAX:I = 0x258

.field public static final EVENT_CODE_FN_MENU:I = 0x191

.field public static final EVENT_CODE_FN_MIN:I = 0x190

.field public static final EVENT_CODE_FN_SETTINGS:I = 0x192

.field public static final EVENT_CODE_FN_SMART_ZOOM:I = 0x198

.field public static final EVENT_CODE_FN_SOURCE_SWITCH:I = 0x194

.field public static final EVENT_CODE_FN_ZOOM_IN:I = 0x196

.field public static final EVENT_CODE_FN_ZOOM_OUT:I = 0x197

.field public static final EVENT_CODE_GESTURE_RESULT:I = 0x111d4

.field public static final EVENT_CODE_INVALID:I = -0x1

.field public static final EVENT_CODE_MEDIA_CHANNEL_DOWN:I = 0x32a

.field public static final EVENT_CODE_MEDIA_CHANNEL_UP:I = 0x329

.field public static final EVENT_CODE_MEDIA_FAST_BACKWARD:I = 0x328

.field public static final EVENT_CODE_MEDIA_FAST_FORWARD:I = 0x327

.field public static final EVENT_CODE_MEDIA_MAX:I = 0x3e8

.field public static final EVENT_CODE_MEDIA_MIN:I = 0x320

.field public static final EVENT_CODE_MEDIA_NEXT:I = 0x323

.field public static final EVENT_CODE_MEDIA_PAUSE:I = 0x322

.field public static final EVENT_CODE_MEDIA_PLAY:I = 0x321

.field public static final EVENT_CODE_MEDIA_PREVIOUS:I = 0x324

.field public static final EVENT_CODE_MEDIA_RESUME:I = 0x326

.field public static final EVENT_CODE_MEDIA_STOP:I = 0x325

.field public static final EVENT_CODE_OK:I = 0xc9

.field public static final EVENT_CODE_OPERATION_MAX:I = 0x190

.field public static final EVENT_CODE_OPERATION_MIN:I = 0xc8

.field public static final EVENT_CODE_PERSON_SEARCH_DB:I = 0x111d8

.field public static final EVENT_CODE_PRIVATE_GET_CONTEXT_INFO:I = 0xc3b5

.field public static final EVENT_CODE_PRIVATE_GET_MEDIA_POLICY:I = 0xc3b6

.field public static final EVENT_CODE_PRIVATE_MAX:I = 0xea60

.field public static final EVENT_CODE_PRIVATE_MIN:I = 0xc350

.field public static final EVENT_CODE_PRIVATE_VIRTUAL_MMI:I = 0xc3b4

.field public static final EVENT_CODE_SESSION_STATUS_CHANGED:I = 0xc3b7

.field public static final EVENT_CODE_SYSTEM_BOOT_UP:I = 0x1

.field public static final EVENT_CODE_SYSTEM_MAX:I = 0xc8

.field public static final EVENT_CODE_SYSTEM_MIN:I = 0x0

.field public static final EVENT_CODE_SYSTEM_SHUTDOWN:I = 0x2

.field public static final EVENT_CODE_SYSTEM_SLEEP:I = 0x4

.field public static final EVENT_CODE_SYSTEM_STANDBY:I = 0x3

.field public static final EVENT_CODE_UI_GESTURE:I = 0xc351

.field public static final EVENT_CODE_VISION_CHILD_FACE_DETECTION:I = 0x4b1

.field public static final EVENT_CODE_VISION_CTL:I = 0x11170

.field public static final EVENT_CODE_VISION_DISTANCE_DETECTION:I = 0x4b2

.field public static final EVENT_CODE_VISION_FEATURE_RESULT:I = 0x111d6

.field public static final EVENT_CODE_VISION_MAX:I = 0x578

.field public static final EVENT_CODE_VISION_MIN:I = 0x4b0

.field public static final EVENT_CODE_VISION_VAD_RESULT:I = 0x111d7

.field public static final EVENT_CODE_VOLUME_ADJUST:I = 0x3ed

.field public static final EVENT_CODE_VOLUME_DOWN:I = 0x3ec

.field public static final EVENT_CODE_VOLUME_MAX:I = 0x4b0

.field public static final EVENT_CODE_VOLUME_MIN:I = 0x3e8

.field public static final EVENT_CODE_VOLUME_MUTE:I = 0x3e9

.field public static final EVENT_CODE_VOLUME_UN_MUTE:I = 0x3ea

.field public static final EVENT_CODE_VOLUME_UP:I = 0x3eb

.field public static final EVENT_SOURCE_ALL:I = 0x1f

.field public static final EVENT_SOURCE_GESTURE:I = 0x4

.field public static final EVENT_SOURCE_KEYBOARD:I = 0x1

.field public static final EVENT_SOURCE_SPEECH:I = 0x8

.field public static final EVENT_SOURCE_TOUCHSCREEN:I = 0x2

.field public static final EVENT_SOURCE_UNKNOWN:I = 0x0

.field public static final EVENT_SOURCE_VISION:I = 0x10


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

.field private extraData:[B

.field private flag:I

.field private source:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    return-void
.end method

.method public static toBundle(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Landroid/os/Bundle;
    .locals 4

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ec"

    if-eqz p0, :cond_1

    .line 298
    :try_start_0
    iget v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "es"

    .line 299
    iget v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->source:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ef"

    .line 300
    iget v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->flag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "et"

    .line 301
    iget-wide v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->time:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 303
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "ed"

    .line 304
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->extraData:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->extraData:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, "eed"

    .line 308
    iget-object p0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->extraData:[B

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 311
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static toEvent(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEvent;
    .locals 4

    .line 320
    new-instance v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {v0}, Lcom/alibaba/ailabs/agui/event/MmiEvent;-><init>()V

    :try_start_0
    const-string v1, "ec"

    const/4 v2, -0x1

    .line 323
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    .line 324
    iget v1, v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "ed"

    const/4 v2, 0x0

    .line 327
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->data:Ljava/lang/String;

    const-string v1, "es"

    const/4 v2, 0x0

    .line 328
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->source:I

    const-string v1, "ef"

    .line 329
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->flag:I

    const-string v1, "et"

    const-wide/16 v2, 0x0

    .line 330
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()[B
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->extraData:[B

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->flag:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->source:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->time:J

    return-wide v0
.end method

.method public setCode(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->data:Ljava/lang/String;

    return-void
.end method

.method public setExtraData([B)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->extraData:[B

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->flag:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->source:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 260
    iput-wide p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmiEvent{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEvent;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
