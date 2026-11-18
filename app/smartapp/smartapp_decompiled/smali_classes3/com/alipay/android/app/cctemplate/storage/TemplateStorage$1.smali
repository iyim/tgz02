.class final Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;
.super Landroid/util/LruCache;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;->sizeOf(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;)I
    .locals 0

    .line 34
    iget p1, p2, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->size:I

    div-int/lit16 p1, p1, 0x400

    return p1
.end method
