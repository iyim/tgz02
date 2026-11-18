.class public Lcom/taobao/android/AliImageServiceImp;
.super Ljava/lang/Object;
.source "AliImageServiceImp.java"

# interfaces
.implements Lcom/taobao/android/AliImageServiceInterface;


# static fields
.field private static final sInstance:Lcom/taobao/android/AliImageServiceImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/taobao/android/AliImageServiceImp;

    invoke-direct {v0}, Lcom/taobao/android/AliImageServiceImp;-><init>()V

    sput-object v0, Lcom/taobao/android/AliImageServiceImp;->sInstance:Lcom/taobao/android/AliImageServiceImp;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/android/AliImageServiceImp;
    .locals 1

    .line 12
    sget-object v0, Lcom/taobao/android/AliImageServiceImp;->sInstance:Lcom/taobao/android/AliImageServiceImp;

    return-object v0
.end method


# virtual methods
.method public getAliImageInterface(Landroid/content/Context;)Lcom/taobao/android/AliImageInterface;
    .locals 2

    .line 22
    new-instance v0, Lcom/taobao/android/PhenixAdapter;

    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/phenix/intf/Phenix;->with(Landroid/content/Context;)Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/PhenixAdapter;-><init>(Lcom/taobao/phenix/intf/Phenix;)V

    return-object v0
.end method

.method public newUrlImageView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/taobao/android/AliUrlImageViewInterface;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/taobao/android/AliUrlImageView;

    invoke-direct {v0, p1}, Lcom/taobao/android/AliUrlImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
