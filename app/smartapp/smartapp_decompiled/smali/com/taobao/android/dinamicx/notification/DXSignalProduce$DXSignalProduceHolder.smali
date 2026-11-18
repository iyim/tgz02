.class final Lcom/taobao/android/dinamicx/notification/DXSignalProduce$DXSignalProduceHolder;
.super Ljava/lang/Object;
.source "DXSignalProduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/notification/DXSignalProduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DXSignalProduceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;-><init>(Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;)V

    sput-object v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$DXSignalProduceHolder;->INSTANCE:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/android/dinamicx/notification/DXSignalProduce;
    .locals 1

    .line 33
    sget-object v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$DXSignalProduceHolder;->INSTANCE:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    return-object v0
.end method
