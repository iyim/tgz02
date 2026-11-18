.class public Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;
.super Ljava/lang/Object;
.source "MainRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_home"


# instance fields
.field private contactRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;->contactRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    return-void
.end method


# virtual methods
.method public getContactRepository()Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/MainRepository;->contactRepository:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    return-object v0
.end method
