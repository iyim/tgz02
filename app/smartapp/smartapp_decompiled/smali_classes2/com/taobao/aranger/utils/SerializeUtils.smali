.class public final Lcom/taobao/aranger/utils/SerializeUtils;
.super Ljava/lang/Object;
.source "SerializeUtils.java"


# static fields
.field private static final sCreatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/aranger/utils/SerializeUtils;->sCreatorMap:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decode([B)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_0

    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    invoke-static {v0}, Lcom/taobao/aranger/utils/SerializeUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static encode(Ljava/lang/Object;)[B
    .locals 1

    .line 53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    invoke-static {v0, p0}, Lcom/taobao/aranger/utils/SerializeUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static readArray(Landroid/os/Parcel;)[Ljava/lang/Object;
    .locals 4

    .line 389
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 393
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 395
    invoke-static {p0}, Lcom/taobao/aranger/utils/SerializeUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 396
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    .line 227
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 358
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 233
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    .line 234
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 235
    sget-object v1, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 231
    :pswitch_2
    sget-object v0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 355
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p0

    return-object p0

    .line 270
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 272
    new-array v1, v0, [Ljava/lang/CharSequence;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 274
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 263
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p0

    return-object p0

    .line 351
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0

    .line 290
    :pswitch_7
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 291
    new-instance p0, Lcom/taobao/aranger/utils/SerializeUtils$1;

    invoke-direct {p0, v0}, Lcom/taobao/aranger/utils/SerializeUtils$1;-><init>(Ljava/io/InputStream;)V

    .line 302
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 307
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Parcelable encountered ClassNotFoundException reading a Serializable object)"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Parcelable encountered IOException reading a Serializable object)"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 285
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    return-object p0

    .line 283
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0

    return-object p0

    .line 281
    :pswitch_b
    invoke-static {p0}, Lcom/taobao/aranger/utils/SerializeUtils;->readArray(Landroid/os/Parcel;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 311
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    :try_start_1
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_4

    .line 320
    sget-object v4, Lcom/taobao/aranger/utils/SerializeUtils;->sCreatorMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 321
    :try_start_2
    sget-object v5, Lcom/taobao/aranger/utils/SerializeUtils;->sCreatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable$Creator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    :try_start_3
    const-string v5, "CREATOR"

    .line 324
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 325
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/Parcelable$Creator;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 340
    :try_start_4
    sget-object v1, Lcom/taobao/aranger/utils/SerializeUtils;->sCreatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 335
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :catch_2
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :catch_3
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    :cond_3
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    invoke-interface {v5, v3}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    :goto_3
    if-ge v2, v3, :cond_4

    .line 345
    invoke-interface {v5, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object v0

    :catchall_0
    move-exception p0

    .line 342
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catch_4
    move-exception p0

    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 279
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 267
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    return-object p0

    .line 349
    :pswitch_10
    const-class v0, Lcom/taobao/aranger/ARanger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0

    .line 261
    :pswitch_11
    const-class v0, Lcom/taobao/aranger/ARanger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 259
    :pswitch_12
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 255
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 253
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_16
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 249
    :pswitch_17
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_18
    const-class v0, Lcom/taobao/aranger/ARanger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    .line 353
    :pswitch_19
    const-class v0, Lcom/taobao/aranger/ARanger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 245
    :pswitch_1a
    const-class v0, Lcom/taobao/aranger/ARanger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 241
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    return-object v1

    .line 365
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object p0

    return-object p0

    .line 363
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 361
    :pswitch_20
    const-class v0, Lcom/taobao/aranger/ARanger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0

    .line 369
    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    .line 370
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Unmarshalling unknown type code "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at offset "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public static readFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {p1}, Lcom/taobao/aranger/utils/SerializeUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/aranger/utils/SharedMemory;->getDataFromFileDescriptor(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/aranger/utils/SerializeUtils;->decode([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static writeArray(Landroid/os/Parcel;[Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 376
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 379
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 383
    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/taobao/aranger/utils/SerializeUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;IZ)J
    .locals 5

    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-static {p0, p1}, Lcom/taobao/aranger/utils/SerializeUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    int-to-long v1, v1

    if-eqz p3, :cond_0

    const-wide/32 v3, 0x32000

    cmp-long p3, v1, v3

    if-lez p3, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataSize(I)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p3, 0x1

    .line 88
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-static {p1}, Lcom/taobao/aranger/utils/SerializeUtils;->encode(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/aranger/utils/SharedMemory;->getFileDescriptorFromData([B)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    return-wide v1
.end method

.method private static writeToParcel(Landroid/os/Parcel;Ljava/lang/Object;)V
    .locals 6

    .line 106
    instance-of v0, p1, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    .line 107
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    invoke-virtual {v0, p0, v2}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_2

    .line 109
    :cond_0
    instance-of v0, p1, [Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    if-eqz v0, :cond_1

    .line 110
    move-object v0, p1

    nop

    nop

    nop

    nop

    const/16 v3, 0x1e

    .line 111
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    array-length v3, v0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1b

    aget-object v5, v0, v4

    .line 114
    invoke-virtual {v5, p0, v2}, Lcom/taobao/aranger/core/wrapper/ParameterWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x1

    .line 117
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 118
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    move-object v0, p1

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 124
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 125
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 127
    :cond_5
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    move-object v0, p1

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 130
    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    .line 133
    :cond_7
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    .line 134
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 136
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_2

    .line 139
    :cond_9
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    .line 140
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_2

    .line 142
    :cond_a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_2

    .line 145
    :cond_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    .line 146
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 148
    :cond_c
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    const/16 v0, 0xa

    .line 149
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_2

    .line 151
    :cond_d
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_e

    const/16 v0, 0xb

    .line 152
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 154
    :cond_e
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    .line 155
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    move-object v0, p1

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_2

    .line 157
    :cond_f
    instance-of v0, p1, [Z

    if-eqz v0, :cond_10

    const/16 v0, 0x17

    .line 158
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    move-object v0, p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_2

    .line 160
    :cond_10
    instance-of v0, p1, [B

    if-eqz v0, :cond_11

    const/16 v0, 0xd

    .line 161
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    move-object v0, p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    .line 163
    :cond_11
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    .line 164
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    move-object v0, p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 166
    :cond_12
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    const/16 v0, 0x18

    .line 167
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 168
    :cond_13
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_14

    const/16 v0, 0xf

    .line 169
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 171
    :cond_14
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_15

    const/16 v0, 0x10

    .line 172
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    move-object v0, p1

    nop

    nop

    nop

    nop

    .line 175
    array-length v3, v0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1b

    aget-object v5, v0, v4

    .line 177
    invoke-interface {v5, p0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    :cond_15
    instance-of v0, p1, [I

    if-eqz v0, :cond_16

    const/16 v0, 0x12

    .line 180
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    move-object v0, p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_2

    .line 182
    :cond_16
    instance-of v0, p1, [J

    if-eqz v0, :cond_17

    const/16 v0, 0x13

    .line 183
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    move-object v0, p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_2

    .line 185
    :cond_17
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    const/16 v0, 0x14

    .line 186
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 188
    :cond_18
    instance-of v0, p1, [D

    if-eqz v0, :cond_19

    const/16 v0, 0x1c

    .line 189
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    move-object v0, p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_2

    .line 192
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_1a

    const/16 v0, 0x11

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    invoke-static {p0, v0}, Lcom/taobao/aranger/utils/SerializeUtils;->writeArray(Landroid/os/Parcel;[Ljava/lang/Object;)V

    goto :goto_2

    .line 196
    :cond_1a
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_1f

    .line 197
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_1b
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1e

    .line 213
    instance-of v0, p1, Landroid/util/Size;

    if-eqz v0, :cond_1c

    const/16 v0, 0x1a

    .line 214
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    nop

    nop

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    goto :goto_3

    .line 216
    :cond_1c
    instance-of v0, p1, Landroid/util/SizeF;

    if-eqz v0, :cond_1d

    const/16 v0, 0x1b

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    nop

    nop

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    goto :goto_3

    .line 219
    :cond_1d
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1e

    const/16 v0, 0x19

    .line 220
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    nop

    nop

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    :cond_1e
    :goto_3
    return-void

    .line 204
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parcelable encountered IOException writing serializable object"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_1f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcel: unable to marshal value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method
