.class public Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;
.super Ljava/lang/Object;
.source "NativeUltrasonic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeUltrasonic"


# instance fields
.field private mNative:J

.field private mOnStateChangedListener:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->setOnStateChangedListener(Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;)V

    return-void
.end method

.method private native onStart(I)V
.end method

.method private native onStop()V
.end method

.method private stateChanged(I)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->getOnStateChangedListener()Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;->onStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChanged  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", listener = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeUltrasonic"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public native destroy()V
.end method

.method public doStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public doStop()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getOnStateChangedListener()Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->mOnStateChangedListener:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;

    return-object v0
.end method

.method public setOnStateChangedListener(Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->mOnStateChangedListener:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;

    return-void
.end method

.method public native setup()V
.end method
