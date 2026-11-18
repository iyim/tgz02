.class final Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher$1;
.super Ljava/lang/Object;
.source "UmbrellaServiceFetcher.java"

# interfaces
.implements Lcom/alibaba/android/umbrella/export/FetcherCore$FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/umbrella/export/FetcherCore$FetchCallback<",
        "Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public call()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    new-instance v0, Lcom/alibaba/android/umbrella/export/UMLinkLogFallbackImpl;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/export/UMLinkLogFallbackImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher$1;->call()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v0

    return-object v0
.end method
