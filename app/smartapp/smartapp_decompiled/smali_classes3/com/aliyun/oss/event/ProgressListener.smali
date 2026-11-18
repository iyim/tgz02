.class public interface abstract Lcom/aliyun/oss/event/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


# static fields
.field public static final NOOP:Lcom/aliyun/oss/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/aliyun/oss/event/ProgressListener$1;

    invoke-direct {v0}, Lcom/aliyun/oss/event/ProgressListener$1;-><init>()V

    sput-object v0, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract progressChanged(Lcom/aliyun/oss/event/ProgressEvent;)V
.end method
