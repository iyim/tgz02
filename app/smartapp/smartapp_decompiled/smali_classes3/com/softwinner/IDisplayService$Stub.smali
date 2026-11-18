.class public abstract Lcom/softwinner/IDisplayService$Stub;
.super Landroid/os/Binder;
.source "IDisplayService.java"

# interfaces
.implements Lcom/softwinner/IDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/softwinner/IDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/softwinner/IDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.softwinner.IDisplayService"

.field static final TRANSACTION_displayCtrl:I = 0x1

.field static final TRANSACTION_get3DMode:I = 0x17

.field static final TRANSACTION_getColorEnhance:I = 0x9

.field static final TRANSACTION_getColorEnhanceDemo:I = 0xb

.field static final TRANSACTION_getColorTemperature:I = 0xf

.field static final TRANSACTION_getHSLBright:I = 0x11

.field static final TRANSACTION_getHSLContrast:I = 0x13

.field static final TRANSACTION_getHSLSaturation:I = 0x15

.field static final TRANSACTION_getHdmiFullscreen:I = 0x1d

.field static final TRANSACTION_getHdmiMode:I = 0x3

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getMarginHeight:I = 0x1b

.field static final TRANSACTION_getMarginWidth:I = 0x19

.field static final TRANSACTION_getReadingMode:I = 0xd

.field static final TRANSACTION_getSmartBacklight:I = 0x5

.field static final TRANSACTION_getSmartBacklightDemo:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_set3DMode:I = 0x18

.field static final TRANSACTION_setColorEnhance:I = 0xa

.field static final TRANSACTION_setColorEnhanceDemo:I = 0xc

.field static final TRANSACTION_setColorTemperature:I = 0x10

.field static final TRANSACTION_setHSLBright:I = 0x12

.field static final TRANSACTION_setHSLContrast:I = 0x14

.field static final TRANSACTION_setHSLSaturation:I = 0x16

.field static final TRANSACTION_setHdmiFullscreen:I = 0x1e

.field static final TRANSACTION_setHdmiMode:I = 0x4

.field static final TRANSACTION_setMarginHeight:I = 0x1c

.field static final TRANSACTION_setMarginWidth:I = 0x1a

.field static final TRANSACTION_setReadingMode:I = 0xe

.field static final TRANSACTION_setSmartBacklight:I = 0x6

.field static final TRANSACTION_setSmartBacklightDemo:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.softwinner.IDisplayService"

    .line 147
    invoke-virtual {p0, p0, v0}, Lcom/softwinner/IDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/softwinner/IDisplayService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.softwinner.IDisplayService"

    .line 158
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    instance-of v1, v0, Lcom/softwinner/IDisplayService;

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Lcom/softwinner/IDisplayService;

    return-object v0

    .line 162
    :cond_1
    new-instance v0, Lcom/softwinner/IDisplayService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/softwinner/IDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/softwinner/IDisplayService;
    .locals 1

    .line 1123
    sget-object v0, Lcom/softwinner/IDisplayService$Stub$Proxy;->sDefaultImpl:Lcom/softwinner/IDisplayService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/softwinner/IDisplayService;)Z
    .locals 1

    .line 1116
    sget-object v0, Lcom/softwinner/IDisplayService$Stub$Proxy;->sDefaultImpl:Lcom/softwinner/IDisplayService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1117
    sput-object p0, Lcom/softwinner/IDisplayService$Stub$Proxy;->sDefaultImpl:Lcom/softwinner/IDisplayService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    const/4 v1, 0x1

    const-string v2, "com.softwinner.IDisplayService"

    if-eq p1, v0, :cond_7

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 451
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 435
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 438
    :cond_0
    invoke-virtual {p0, v0}, Lcom/softwinner/IDisplayService$Stub;->setHdmiFullscreen(Z)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 427
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getHdmiFullscreen()Z

    move-result p1

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 418
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 421
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setMarginHeight(I)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 410
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getMarginHeight()I

    move-result p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 401
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 404
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setMarginWidth(I)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 393
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getMarginWidth()I

    move-result p1

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 383
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 386
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->set3DMode(I)Z

    move-result p1

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 375
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->get3DMode()I

    move-result p1

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 366
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setHSLSaturation(I)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 358
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getHSLSaturation()I

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 349
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 352
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setHSLContrast(I)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 341
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getHSLContrast()I

    move-result p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 332
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 335
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setHSLBright(I)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 324
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getHSLBright()I

    move-result p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 315
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setColorTemperature(I)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 307
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getColorTemperature()I

    move-result p1

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 298
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 301
    :cond_1
    invoke-virtual {p0, v0}, Lcom/softwinner/IDisplayService$Stub;->setReadingMode(Z)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 290
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getReadingMode()Z

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 281
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 284
    :cond_2
    invoke-virtual {p0, v0}, Lcom/softwinner/IDisplayService$Stub;->setColorEnhanceDemo(Z)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 273
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getColorEnhanceDemo()Z

    move-result p1

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 264
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 267
    :cond_3
    invoke-virtual {p0, v0}, Lcom/softwinner/IDisplayService$Stub;->setColorEnhance(Z)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 256
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getColorEnhance()Z

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 247
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 250
    :cond_4
    invoke-virtual {p0, v0}, Lcom/softwinner/IDisplayService$Stub;->setSmartBacklightDemo(Z)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 239
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getSmartBacklightDemo()Z

    move-result p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 230
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 233
    :cond_5
    invoke-virtual {p0, v0}, Lcom/softwinner/IDisplayService$Stub;->setSmartBacklight(Z)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 222
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getSmartBacklight()Z

    move-result p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 212
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/softwinner/IDisplayService$Stub;->setHdmiMode(I)Z

    move-result p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 204
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getHdmiMode()I

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 196
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getVersion()I

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 180
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 189
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/softwinner/IDisplayService$Stub;->displayCtrl(IIII)I

    move-result p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 175
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 444
    :cond_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p0}, Lcom/softwinner/IDisplayService$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
